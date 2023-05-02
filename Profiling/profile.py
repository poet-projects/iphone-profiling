import io
import json
import math
import os
import re
from contextlib import redirect_stdout
from dataclasses import dataclass
from trace import write_coreml_model

import pyperclip
import torch
import torch.nn as nn
from model import get_example_input, get_model
from torchinfo import summary
from tqdm import tqdm


@dataclass
class LayerInfo:
    module: nn.Module
    model_name: str
    model_class_name: str
    layer_key: str
    layer_type: str
    input_shape: list[int]
    output_shape: list[int]
    dtype: torch.Tensor.type
    dtype_str: str


def profile_all_layers():
    model_instance = get_model()
    example_input = get_example_input()

    print("Generating layer summary...")

    with tqdm(total=0, miniters=1) as pbar:
        layers = {}

        def hook(module, inputs, outputs):
            pbar.update(1)
            layer_type = module.__class__.__name__
            input_shape = list(inputs[0].shape)
            output_shape = [len(outputs)] + list(outputs[0].shape)
            dtype = inputs[0].dtype
            # TODO: add more to the key for Conv2d, etc.

            input_shape_str = "-".join([str(x) for x in input_shape])
            output_shape_str = "-".join([str(x) for x in output_shape])
            dtype_str = str(dtype).replace("torch.", "").lower()
            model_name = f"{layer_type.lower()}-{input_shape_str}-to-{output_shape_str}-dtype-{dtype_str}"
            model_class_name = model_name.replace("-", "_")
            layer_key = "	".join(
                map(str, [layer_type, dtype, input_shape, output_shape])
            )

            layers[model_name] = LayerInfo(
                module,
                model_name,
                model_class_name,
                layer_key,
                layer_type,
                input_shape,
                output_shape,
                dtype,
                dtype_str,
            )

        def register_hooks(model: torch.nn.Module):
            num_hooks = 0
            children = list(model.children())
            if len(children) == 0:
                num_hooks += 1
                model.register_forward_hook(hook)
            for child in children:
                num_hooks += register_hooks(child)
            return num_hooks

        pbar.total = register_hooks(model_instance)
        model_instance(*example_input)

    final_layers = list(sorted(layers.values(), key=lambda layer: layer.layer_key))
    final_layer_keys = [layer.layer_key for layer in final_layers]

    message = "\n".join(final_layer_keys)
    message += "\n\nTotal unique layers: " + str(len(final_layers))
    layer_types = set([layer.layer_type for layer in final_layers])
    message += "\nLayer types:	" + "	".join(layer_types)
    message += "\n\nUnique output shapes for paging:\n"
    output_sizes = list(
        sorted(set([str(layer.output_shape) for layer in final_layers]))
    )
    message += "\n".join(output_sizes)

    try:
        pyperclip.copy(message)
    except Exception as e:
        print("ERROR: could not copy layer summary to clipboard")
    print(message)

    with open("ViewControllerSkeleton.swift", "r") as f:
        swift_skeleton = f.read()

    swift_input = ""

    print("Writing CoreML model files for all layers...")

    for i, layer in enumerate(tqdm(final_layers, miniters=1)):
        input_shape = layer.input_shape

        if "float" in str(layer.dtype):
            example_input = torch.rand(input_shape, dtype=layer.dtype)
        else:
            example_input = torch.randint(0, 1000, input_shape, dtype=layer.dtype)

        write_coreml_model(layer.model_name, layer.module, example_input)

        joined_counters = ",".join([f"d{i}" for i in range(len(input_shape))])
        input_loops = "\n".join(
            [f"for d{i} in 0..<{input_shape[i]} {{" for i in range(len(input_shape))]
        )

        swift_input += (
            f"let {layer.model_class_name}_instance = {layer.model_class_name}()\n"
            "for i in 0..<100 {\n"
            f"let input = try! MLMultiArray(shape: {input_shape}, dataType: .{layer.dtype_str})\n"
            + input_loops
            + "\n"
            + f"input[[{joined_counters}] as [NSNumber]] = Double.random(in:0...2) as NSNumber\n"
            + "}" * len(input_shape)
            + f"\nlet prediction = try! {layer.model_class_name}_instance.prediction(input: {layer.model_class_name}Input(input: input))\n"
            "usleep(25000)\n"
            "DispatchQueue.main.async {\n"
            f'self.answerLabel.text = "layer {i + 1}/{len(final_layers)} run " + String(i) + "/100"\n'
            "}}\n"
            "usleep(200000)\n\n"
        )
        # total_output_size = math.prod(output_shape) # number of fp16's
        # # divide by 4 to account for Double --> fp16 conversion
        # pageout_input = f"let arr = (0..<{total_output_size // 4}).map {{ _ in Double.random(in: 1...5) }}\n"
        # # multiple by 2 because there are 2 bytes in every fp16
        # pagein_input = f"let _ = fileHandle.readData(ofLength: {total_output_size * 2})"

    swift_skeleton = swift_skeleton.replace("// swift_input", swift_input)
    # swift_skeleton = swift_skeleton.replace("// pageout_input", pageout_input)
    # swift_skeleton = swift_skeleton.replace("// pagein_input", pagein_input)

    with open("../CoreMLBert/ViewController.swift", "w") as f:
        f.write(swift_skeleton)

    print("Done writing all CoreML models.")


if __name__ == "__main__":
    profile_all_layers()

# unused strategies for tracing PyTorch (might be useful in the future):
# - torch.jit.script and using the resulting code property
# - torch.onnx.export

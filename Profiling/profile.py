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
            input_shape = tuple(inputs[0].shape)
            output_shape = (len(outputs),) + tuple(outputs[0].shape)
            dtype = inputs[0].dtype

            input_shape_str = "-".join([str(x) for x in input_shape])
            output_shape_str = "-".join([str(x) for x in output_shape])
            dtype_str = str(dtype).replace("torch.", "").lower()

            extra_params = []
            if layer_type == "Conv2d":
                extra_params += [
                    module.kernel_size,
                    module.stride,
                    module.padding,
                    module.dilation,
                    module.groups,
                ]
            elif layer_type == "GroupNorm":
                extra_params += [module.num_groups]

            model_name = f"{layer_type.lower()}-{input_shape_str}-to-{output_shape_str}-dtype-{dtype_str}"
            if len(extra_params) > 0:
                model_name += "-params-" + "-".join(
                    map(
                        lambda x: "-".join(map(str, x)) if type(x) is tuple else str(x),
                        extra_params,
                    )
                )
            model_class_name = model_name.replace("-", "_")

            layer_key = "	".join(
                map(
                    str,
                    [
                        layer_type,
                        dtype_str,
                        input_shape,
                        output_shape,
                        ""
                        if len(extra_params) == 0
                        else ", ".join(map(str, extra_params)),
                    ],
                )
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
    message += "\n\nUnique output sizes for paging:\n"
    output_types = sorted(
        set(
            [(math.prod(layer.output_shape), layer.dtype_str) for layer in final_layers]
        )
    )
    message += "\n".join(
        [
            str(output_shape) + "	" + dtype_str
            for output_shape, dtype_str in output_types
        ]
    )

    try:
        pyperclip.copy(message)
    except Exception as e:
        print("ERROR: could not copy layer summary to clipboard")
    with open("layers.txt", "w") as f:
        f.write(message)
    print(message)

    with open("ViewControllerSkeleton.swift", "r") as f:
        swift_skeleton = f.read()

    compute_input = f"let end = {len(final_layers)}\n"
    pagein_input = ""
    pageout_input = ""

    print("Writing CoreML model files for all layers...")

    input_types = set([(layer.input_shape, layer.dtype_str) for layer in final_layers])
    for i, input_type in enumerate(input_types):
        input_shape, dtype_str = input_type
        input_loops = "\n".join(
            [f"for d{i} in 0..<{input_shape[i]} {{" for i in range(len(input_shape))]
        )
        swift_dtype = "Double" if "float" in dtype_str else "Int"
        joined_counters = ",".join([f"d{i}" for i in range(len(input_shape))])
        input_name = f"input_{'_'.join(map(str, input_shape))}"
        compute_input += (
            "DispatchQueue.main.async {\n"
            f'self.answerLabel.text = "Generating input shape {i + 1}/{len(input_types)}"\n'
            "}\n"
            f"let {input_name} = try! MLMultiArray(shape: {list(input_shape)}, dataType: .{dtype_str})\n"
            + input_loops
            + f"\n{input_name}[[{joined_counters}] as [NSNumber]] = {swift_dtype}.random(in:0...1000) as NSNumber\n"
            + "}" * len(input_shape)
            + "\n\n"
        )

    for i, layer in enumerate(tqdm(final_layers, miniters=1)):
        device = example_input[0].device if type(example_input) is tuple else example_input.device

        if "float" in str(layer.dtype):
            example_input = torch.rand(layer.input_shape, dtype=layer.dtype, device=device)
        else:
            example_input = torch.randint(0, 1000, layer.input_shape, dtype=layer.dtype, device=device)

        write_coreml_model(layer.model_name, layer.module, example_input)

        compute_input += (
            f"if start...end ~= {i + 1} {{\n"
            f"var {layer.model_class_name}_instance: {layer.model_class_name}? = {layer.model_class_name}()\n"
            "for i in 0..<100 {\n"
            + f"try! {layer.model_class_name}_instance!.prediction(input: {layer.model_class_name}Input(input: input_{'_'.join(map(str, layer.input_shape))}))\n"
            "usleep(10000)\n"
            "DispatchQueue.main.async {\n"
            f'self.answerLabel.text = "layer {i + 1}/{len(final_layers)} run " + String(i + 1) + "/100"\n'
            "}}\n"
            f"{layer.model_class_name}_instance = nil\n"
            "usleep(200000)\n"
            "}\n\n"
        )

    for i, output_type in enumerate(output_types):
        output_size, dtype_str = output_type
        num_bytes = output_size * int(re.findall(r"\d+$", dtype_str)[0]) // 8
        pageout_input += (
          f"let data_{num_bytes} = Data(repeating: 1, count: {num_bytes})\n"
          "for i in 0..<100 {\n"
          f'let targetURL = tempDirectoryURL.appendingPathComponent("size_{num_bytes}_run_" + String(i)).appendingPathExtension("txy")\n'
          "let fileHandle = try FileHandle(forWritingTo: targetURL)\n"
          f"fileHandle.write(data_{num_bytes})\n"
          "try fileHandle.synchronize()\n"
          "fileHandle.closeFile()\n"
          "usleep(25000)\n"
          "DispatchQueue.main.async {\n"
          f'self.answerLabel.text = "pageout size {i + 1}/{len(output_types)} run " + String(i + 1) + "/100"\n'
          "}}\n\n"
        )
        pagein_input += (
            "for i in 0..<100 {\n"
            f'let targetURL = tempDirectoryURL.appendingPathComponent("size_{num_bytes}_run_" + String(i)).appendingPathExtension("txy")\n'
            "let fileHandle = try FileHandle(forReadingFrom: targetURL)\n"
            f"try fileHandle.read(upToCount: {num_bytes})\n"
            "fileHandle.closeFile()\n"
            "usleep(25000)\n"
            "DispatchQueue.main.async {\n"
            f'self.answerLabel.text = "pagein size {i + 1}/{len(output_types)} run " + String(i + 1) + "/100"\n'
            "}}\n\n"
        )
    
    swift_skeleton = swift_skeleton.replace("// compute_input", compute_input)
    swift_skeleton = swift_skeleton.replace("// page_input", pageout_input + "\n\n\n" + pagein_input)

    with open("../CoreMLBert/ViewController.swift", "w") as f:
        f.write(swift_skeleton)

    print("Done writing all CoreML models.")


if __name__ == "__main__":
    profile_all_layers()

# unused strategies for tracing PyTorch (might be useful in the future):
# - torch.jit.script and using the resulting code property
# - torch.onnx.export

import io
import json
import math
import os
import re
import subprocess
from contextlib import redirect_stdout

from torchinfo import summary

from model import get_example_input, get_model

def generate_layer_summary(output_file="layers.txt"):
    model = get_model()
    example_input = get_example_input()

    print("Generating layer summary...")
    f = io.StringIO()
    with redirect_stdout(f):
        summary(
            model,
            input_data=example_input,
            device="cpu",
            depth=1000,
            col_names=["input_size", "output_size", "num_params"],
            mode="train",
        )
    out = f.getvalue()

    lines = out.split("\n")
    leaf_layers = []


    def get_layer_depth(line: str) -> int:
        match = re.match(r"^(│\s+)+", line)
        if match is None:
            return 0
        return match[0].count("│")


    for i in range(len(lines)):
        line_depth = get_layer_depth(lines[i])
        next_line_depth = get_layer_depth(lines[i + 1]) if i + 1 < len(lines) else 0
        if line_depth >= next_line_depth:
            leaf_layers.append(lines[i])

    actual_layers = re.findall(r"[|├└].+\[.+\].+\[.+\]", "\n".join(leaf_layers))
    metadata_removed = [re.sub(r"\d+-\d+", "", layer) for layer in actual_layers]
    padding_removed = [re.sub(r"^[|─├└\s]+", "", layer) for layer in metadata_removed]
    whitespace_trimmed = [re.sub(r":?\s{2,}", "	", layer) for layer in padding_removed]
    duplicates_removed = list(set(whitespace_trimmed))
    final_layers = list(sorted(duplicates_removed))
    
    message = "\n".join(final_layers)
    message += "\n\nTotal unique layers: " + str(len(final_layers))
    layer_types = set([layer.split(":")[0] for layer in final_layers])
    message += "\nLayer types:	" + "	".join(layer_types)
    message += "\n\nUnique output shapes for paging:\n"
    output_sizes = list(set(["[" + layer.split("[ ")[2] for layer in final_layers]))
    message += "\n".join(output_sizes)

    subprocess.run("pbcopy", text=True, input=message)
    with open(output_file, "w") as f:
        f.write(message)
    print(message)

def profile_layer_by_layer(final_layers: list[str]):
    with open("trace-skeleton.py", "r") as f:
        trace_skeleton = f.read()

    with open("ViewControllerSkeleton.swift", "r") as f:
        swift_skeleton = f.read()

    swift_input = ""

    for layer in final_layers:
        split_layer = layer.split("	[")
        layer_name = split_layer[0]
        input_shape = json.loads("[" + split_layer[1])
        output_shape = json.loads("[" + split_layer[2])

        example_input = f"example_input = torch.rand({input_shape}, dtype=torch.float32)\n"

        if layer_name == "Linear":
            init = f"self.linear = nn.Linear({input_shape[-1]}, {output_shape[-1]}, dtype=torch.float32)\n"
            forward = "self.linear(input)\n"
        elif layer_name == "Conv2d":
            continue # TODO
        else:
            print("SKIPPING LAYER DUE TO UNKNOWN TYPE:", layer_name)
            continue

        print("Preparing to profile layer " + layer, end=" ... ")

        model_name = f"{layer_name.lower()}-{'-'.join(input_shape)}-to-{'-'.join(output_shape)}"
        model_class_name = model_name.replace("-", "_")
        save = f"model.save('../Resources/{model_name}.mlmodel')"

        trace_skeleton = trace_skeleton.replace("# init", init)
        trace_skeleton = trace_skeleton.replace("# forward", forward)
        trace_skeleton = trace_skeleton.replace("# example_input", example_input)
        trace_skeleton = trace_skeleton.replace("# save", save)

        with redirect_stdout(open(os.devnull, 'w')):
            exec(trace_skeleton)

        joined_counters = ",".join([f"d{i}" for i in range(len(input_shape))])

        swift_input += \
            "for i in 0..<100 {" \
                f"let input = try! MLMultiArray(shape: {input_shape}, dataType: .float16)\n" \
                "".join([f" for d{i} in 0..<{input_shape[i]} {{" for i in range(len(input_shape))]) + \
                f"input[[{joined_counters}] as [NSNumber]] = Double.random(in:0...2) as NSNumber\n" \
                "}" * len(input_shape) + \
                f"let prediction = try! {model_class_name}().prediction(input: {model_class_name}Input(input: input))" \
                "usleep(100000)" \
                "DispatchQueue.main.async {" \
                    "self.answerLabel.text = \"prediction \" + String(i + 1) + \"/100\"" \
                "}" \
            "}" \

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

    print("READY!")

# unused strategies for tracing PyTorch (might be useful in the future):
# - torch.jit.script and using the resulting code property
# - torch.onnx.export

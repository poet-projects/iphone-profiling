import os
import sys

import coremltools as ct
import numpy as np
import torch
import torch.nn as nn


class IsolatedLayer(nn.Module):
    def __init__(self, operation):
        super(IsolatedLayer, self).__init__()
        self.operation = operation

    def forward(self, *x):
        if x.dtype == torch.float16:
            x = x.half()
            self.operation = self.operation.half()
        return self.operation(*x)


def write_coreml_model(model_name: str, operation, example_input: np.ndarray):
    filename = f"../Resources/{model_name}.mlmodel"
    if not os.path.isfile(filename):
        model = IsolatedLayer(operation)

        traced_model = torch.jit.trace(model, example_input)

        old_stderr = sys.stderr
        # sys.stderr = open(os.devnull, "w")
        model = ct.convert(
            traced_model,
            # convert_to="mlprogram",
            minimum_deployment_target=ct.target.macOS13,
            inputs=[
                ct.TensorType(name="x", shape=example_input[0].shape, dtype=example_input[0].numpy().dtype),
                ct.TensorType(name="y", shape=example_input[1].shape, dtype=example_input[1].numpy().dtype),
                ct.TensorType(name="z", shape=example_input[2].shape, dtype=example_input[2].numpy().dtype)
            ],
        )
        sys.stderr = old_stderr

        model.save(filename)

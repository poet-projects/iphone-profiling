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

    def forward(self, input):
        return self.operation(input)


def write_coreml_model(model_name: str, operation, example_input: np.ndarray):
    model = IsolatedLayer(operation)

    traced_model = torch.jit.trace(model, example_input)

    old_stderr = sys.stderr
    sys.stderr = open(os.devnull, "w")
    model = ct.convert(
        traced_model,
        inputs=[
            ct.TensorType(shape=example_input.shape),
        ],
    )
    sys.stderr = old_stderr

    model.save(f"../Resources/{model_name}.mlmodel")

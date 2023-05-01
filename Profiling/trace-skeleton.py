import coremltools as ct
import numpy as np
import torch
import torch.nn as nn


class IsolatedLayer(nn.Module):
    def __init__(self):
        super(IsolatedLayer, self).__init__()
        # init

    def forward(self, input):
        return # forward


model = IsolatedLayer()
example_input: np.ndarray = None
# example_input

traced_model = torch.jit.trace(model, example_input)

model = ct.convert(
    traced_model,
    inputs=[
        ct.TensorType(shape=example_input.shape),
    ],
    
)

# save

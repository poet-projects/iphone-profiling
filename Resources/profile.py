import coremltools as ct
import torch
import torch.nn as nn
from functools import reduce
import numpy as np

class Isolated(nn.Module):
    def __init__(self):
        super(Isolated, self).__init__()
        self.linear = nn.Linear(768, 768, dtype=torch.float32)
        self.linear2 = nn.Linear(3072, 768, dtype=torch.float32)
        self.softmax = nn.Softmax()

    def forward(self, input):
        # chaining method (only works if input size matches output)

        # x = word_id
        # for i in range(200):
        #     x = self.softmax(x)
        # return x

        # alternative, but must account for addition overhead

        # results = [self.linear2(input) for _ in range(200)]
        # total = results[0]
        # for result in results[1:]:
        #     total = torch.add(total, result)
        # return total

        return self.linear2(input)

def save():
    model = Isolated()

    from torchinfo import summary, layer_info

    summary(model, depth=99)

    # Encode the text
    input = torch.tensor(np.ones(3072), dtype=torch.float32)

    traced_model = torch.jit.trace(model, input)
    print(traced_model)

    model = ct.convert(
        traced_model,
        inputs=[
            ct.TensorType(shape=input.shape),
        ],
    )

    model.save("isolated-layer.mlmodel")

save()

spec = ct.utils.load_spec("./isolated-layer.mlmodel")
builder = ct.models.neural_network.NeuralNetworkBuilder(spec=spec)
builder.inspect_layers()
builder.inspect_input_features()

# builder.make_updatable(["input", "input.279", "input.285"])
# builder.make_updatable(["lm_head"])

# from coremltools.models import datatypes

# # does not work because of https://github.com/apple/coremltools/issues/1417
# # (see linked issues there too)
# # builder.set_categorical_cross_entropy_loss(name="lossLayer", input="1043_softmax")
# builder.set_mean_squared_error_loss(
#     name="lossLayer",
#     input_feature=("output_logits", datatypes.Array(5)),
# )
# from coremltools.models.neural_network import AdamParams

# # import datatypes

# builder.set_adam_optimizer(AdamParams(lr=1e-3, batch=16))
# builder.set_epochs(10)
# model_spec = builder.spec
# model_spec.description.trainingInput[0].shortDescription = "Training input #0"
# model_spec.description.trainingInput[1].shortDescription = "Training input #1"
# from coremltools.models import MLModel

# mlmodel_updatable = MLModel(model_spec)
# mlmodel_updatable.save("gpt2-512.mlmodel")

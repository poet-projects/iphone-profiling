import torch
from stablediffusion import get_example_input_with_dtype, get_model_with_dtype


def get_example_input():
    return get_example_input_with_dtype(torch.float16)


def get_model():
    return get_model_with_dtype(torch.float16)

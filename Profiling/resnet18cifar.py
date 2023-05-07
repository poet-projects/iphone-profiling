import detectors
import timm
import torch

def get_example_input():
    # batch size 4
    return (torch.randn(8, 3, 32, 32),)

def get_model():
    return timm.create_model("resnet18_cifar10", pretrained=True)

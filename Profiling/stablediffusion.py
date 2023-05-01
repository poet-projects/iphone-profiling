import torch
from diffusers import DPMSolverMultistepScheduler, StableDiffusionPipeline, models

def get_example_input():
    sample = torch.randn(2, 4, 96, 96)  # .half().cuda()
    timestep = torch.rand(1) * 999  # .half().cuda() * 999
    encoder_hidden_states = torch.randn(2, 77, 1024)  # .half().cuda()
    return sample, timestep, encoder_hidden_states

def get_model():
    model_id = "stabilityai/stable-diffusion-2-1"

    pipe = StableDiffusionPipeline.from_pretrained(model_id, torch_dtype=torch.float32)
    pipe.scheduler = DPMSolverMultistepScheduler.from_config(pipe.scheduler.config)
    # pipe = pipe.to("cuda")
    pipe.enable_attention_slicing()

    print("Loaded model")

    return pipe.unet

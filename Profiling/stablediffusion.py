import torch
from diffusers import DPMSolverMultistepScheduler, StableDiffusionPipeline, models


def get_example_input_with_dtype(dtype):
    sample = torch.randn(2, 4, 96, 96)  # .half().cuda()
    timestep = torch.rand(1) * 999  # .half().cuda() * 999
    encoder_hidden_states = torch.randn(2, 77, 1024)  # .half().cuda()
    if dtype == torch.float16:
        return tuple(
            map(lambda x: x.half().cuda(), (sample, timestep, encoder_hidden_states))
        )
    return sample, timestep, encoder_hidden_states


def get_model_with_dtype(dtype):
    model_id = "stabilityai/stable-diffusion-2-1"

    pipe = StableDiffusionPipeline.from_pretrained(model_id, torch_dtype=dtype)
    pipe.scheduler = DPMSolverMultistepScheduler.from_config(pipe.scheduler.config)
    if dtype == torch.float16:
        pipe = pipe.to("cuda")
    pipe.enable_attention_slicing()

    print("Loaded model")

    return pipe.unet

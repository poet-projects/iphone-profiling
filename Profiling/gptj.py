from transformers import AutoModelForCausalLM, AutoTokenizer

def get_example_input():
    tokenizer = AutoTokenizer.from_pretrained("EleutherAI/gpt-j-6B")

    prompt = (
        "In a shocking finding, scientists discovered a herd of unicorns living in a remote, "
        "previously unexplored valley, in the Andes Mountains. Even more surprising to the "
        "researchers was the fact that the unicorns spoke perfect English."
    )

    return tokenizer(prompt, return_tensors="pt").input_ids

def get_model():
    print("Loading GPT-J into memory...")
    model = AutoModelForCausalLM.from_pretrained("EleutherAI/gpt-j-6B")
    print("Finished loading model.")
    return model

from fastapi import FastAPI
from pydantic import BaseModel, constr
from transformers import pipeline
import torch

app = FastAPI()

model_path = '/test_project/model'
model = pipeline(task="text-classification", model=model_path)

class UserRequestIn(BaseModel):
    text: constr(min_length=10)

@app.post("/classificate")
def read_classification(user_request_in: UserRequestIn):
    score = model(user_request_in.text)[0]['score']
    return score

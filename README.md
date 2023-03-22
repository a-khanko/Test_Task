# Readability Project # 

This is a project that contains a Jupyter notebook for training regression model for [CommonLit Readability Prize](https://www.kaggle.com/c/commonlitreadabilityprize/overview) and a Dockerfile for trained model deployment.

## Usage
### Prerequisites ###

In order to use this project, you need to have the following installed on your system:
- Python==3.8
- Docker==2.5.0.0

### Training ###
1. Clone the repository to your local machine, install training requirements and follow the instructions in the notebook to train model:
```
git clone https://github.com/a-khanko/Test_Task.git
cd Test_Task/notebooks
pip install -r requirements.txt
jupyter notebook Training.ipynb
```

### Deployment ###
1. Build the Docker image and launch docker container
```
docker build -t projector_image .
docker run -p 80:80 projector_image
```
2. Send a request to http://localhost:80/classificate endpoint.
```
curl -H "Content-Type: application/json" --request POST --data '{"text":"insert your text here"}' http://127.0.0.1:80/classificate
```

###
The current project has been deployed on an AWS EC2 instance and can be accessed using the following code:
```
curl -H "Content-Type: application/json" --request POST --data '{"text":"insert your text here"}' http://18.217.44.129:80/classificate
```

# Python Project # 

This is a project that contains a Jupyter notebook for training regression model for [CommonLit Readability Prize](https://www.kaggle.com/c/commonlitreadabilityprize/overview) and a Dockerfile for trained model deployment.

## Usage
### Prerequisites ###

In order to use this project, you need to have the following installed on your system:
- Python==3.8
- Docker==2.5.0.0

### Training ###
1. Clone the repository to your local machine:
```
git clone https://github.com/a-khanko/Test_Task.git
```
2. Navigate to the `notebooks` directory:
```
cd Test_Task/notebooks
```
3. Install the training dependencies:
```
pip install -r requirements.txt
```
4. Launch the training Jupyter notebook:
```
jupyter notebook Training.ipynb
```
5. Follow the instructions in the notebook to train the model.

### Deployment ###
1. Build the Docker image:
```
docker build -t [image-name] .
```
2. Launch the Docker container:
```
docker run -p [host-port]:[container-port] [image-name]
```
3. Access the application at http://localhost:[host-port].

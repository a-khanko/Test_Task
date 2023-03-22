FROM python:3.8

WORKDIR /test_project

COPY ./requirements.txt /test_project/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /test_project/requirements.txt

COPY ./app /test_project/app

COPY ./model /test_project/model

RUN cd ./model/ && tar -xzf model.tar.gz && rm model.tar.gz

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

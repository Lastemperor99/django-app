FROM python:3.7-alpine
MAINTAINER Darius Coroiu coding

ENV PYTHONUNBUFFERED 1  # is recommended to run python in unbuffered mode in Docker containers

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app          #creates an empty folder on docker image and then moves to it as the default directory
WORKDIR /app
COPY ./app /app

RUN adduser -D user      # -D means for running applications only
USER user               

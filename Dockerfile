FROM python:3.7-alpine

ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONBUFFERED 1
ENV DEBUG 0 

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app app

RUN adduser -D user
USER user

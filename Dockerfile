FROM python:3.9.7-alpine3.14
LABEL https://github.com/Code-JD="J.D. Herring"

ENV  PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
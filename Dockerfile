FROM python:3.9-alpine
LABEL author: "ClosingBrackets"
LABEL version: "0.1"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY . .

RUN adduser -D user
USER user
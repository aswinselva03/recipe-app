FROM python:3.8-alpine
MAINTAINER Aswin Selvakumar

ENV PYTHONUNBUFFERED 1


COPY ./Pipfile /Pipfile
RUN pip3 install pipenv
RUN pipenv install --system

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user


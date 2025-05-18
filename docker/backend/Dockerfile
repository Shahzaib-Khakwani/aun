FROM python:3.8.15-alpine

RUN apk update && apk add python3-dev gcc libc-dev

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install gunicorn

RUN apk update && apk add libffi-dev gcc musl-dev

ADD ./requirements.txt /app/
RUN pip install -r requirements.txt

ADD ./todo /app/todo
ADD ./docker /app/docker

RUN chmod +x /app/docker/backend/server-entrypoint.sh


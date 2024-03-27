FROM ubuntu

RUN apt update && apt install curl -y

WORKDIR scripts\ubuntu

COPY . scripts\ubuntu
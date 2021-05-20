FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y
RUN apt install aria2 npm nodejs -y
COPY . /mirrorbot
WORKDIR /mirrorbot
RUN npm install
ENTRYPOINT ./aria.sh && npm start

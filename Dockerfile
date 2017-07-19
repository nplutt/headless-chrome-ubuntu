FROM ubuntu:16.04

MAINTAINER Nick Plutt <nplutt@gmail.com>

RUN apt-get update \
    && apt-get install -y git \
    && git clone https://github.com/adieuadieu/serverless-chrome.git \
    && cd serverless-chrome/chrome \
    && tar -zxvf chrome-headless-lambda-linux-x64.tar.gz \
    && export CHROME_BIN=/serverless-chrome/chrome/headless-chrome/headless_shell

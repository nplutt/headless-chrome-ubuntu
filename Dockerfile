FROM ubuntu:16.04

MAINTAINER Nick Plutt <nplutt@gmail.com>

RUN apt-get update \
    && apt-get install -y git \
       python-pip \
       libnss3 \
       libgtk2.0-0 \
       libgdk-pixbuf2.0-0 \
       libfontconfig1 \
       libxrender1 \
       libx11-6 \
       libglib2.0-0 \
       libxft2 \
       libfreetype6 \
       libc6 \
       zlib1g \
       libpng12-0 \ 
       libstdc++6-4.8-dbg-arm64-cross \
       libgcc1 \
    && pip install --upgrade pip \
    && pip install virtualenv \
    && git clone https://github.com/adieuadieu/serverless-chrome.git \
    && cd serverless-chrome/chrome \
    && tar -zxvf chrome-headless-lambda-linux-x64.tar.gz \
    && export CHROME_BIN=/serverless-chrome/chrome/headless-chrome/headless_shell

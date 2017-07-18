FROM ubuntu:16.04

MAINTAINER Nick Plutt <nplutt@gmail.com>

RUN apt-get update \
    && apt-get install -y wget \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' \
    && apt-get update \
    && apt-get install -y \
       google-chrome-stable \
       libglib2.0 \
       xvfb \
       python-pip \
    && pip install --upgrade pip \
    && pip install virtualenv

ENV CHROME_BIN /usr/bin/google-chrome

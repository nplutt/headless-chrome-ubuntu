FROM ubuntu:16.04

MAINTAINER Nick Plutt <nplutt@gmail.com>

RUN apt-get update \
    && apt-get -y install python-pip \
    && pip install virtualenv
#    && virtualenv node \
#    && . node/bin/activate \
#    && pip install nodeenv \
#    && nodeenv -p \
#    && npm install @angular/cli \
#    && npm link @angular/cli \
#    && ng new mucking \
#    && cd mucking \
#    && npm install \
#    && ng build --target=production --environment=prod

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget python sudo
RUN mkdir /app

WORKDIR /app

ADD QSTK-0.2.8 /app/QSTK-0.2.8
RUN cd /app/QSTK-0.2.8
RUN sh /app/QSTK-0.2.8/UbuntuInstallation.sh

WORKDIR /app/QSTK-0.2.8
RUN python setup.py install

WORKDIR /app/QSTK-0.2.8/Examples
CMD python Validation.py

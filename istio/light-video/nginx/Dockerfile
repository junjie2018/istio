FROM ubuntu:18.04

ADD sources.list /etc/apt/

RUN apt-get update && apt-get -y upgrade 
RUN apt install -y vim curl nginx
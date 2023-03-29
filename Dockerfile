FROM openjdk:21-jdk-slim-bullseye

RUN apt-get -qy update
RUN apt-get -qy install maven
RUN apt-get -qy install lsb-release

WORKDIR /root
RUN mkdir /root/OUTPUT
COPY . .

FROM ubuntu:20.04

WORKDIR /usr/src/app
COPY script1.7.sh .
RUN apt-get -y update; apt-get -y install curl


RUN chmod +x script1.7.sh
CMD ./script1.7.sh
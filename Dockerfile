FROM ubuntu:latest

MAINTAINER CHANDRU

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]

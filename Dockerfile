FROM ubuntu:14.04
MAINTAINER "Jinwoo Park <jinwoo.develop@gmail.com>"
LABEL "purpose"="practive"
RUN apt-get update
RUN apt-get install apache2 -y
COPY ./index.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
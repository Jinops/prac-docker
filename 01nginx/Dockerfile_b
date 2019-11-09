#Base image 
FROM ubuntu:latest

#Install nginx
RUN apt-get update && apt-get install -y -q nginx

#Copy index.html
COPY ./index.html /usr/share/nginx/html/

#Start nginx
CMD ["nginx", "-g", "daemon off;"]

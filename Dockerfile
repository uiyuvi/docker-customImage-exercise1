#Base image - like an os in the laptop
FROM alpine

#Download and install the dependencies - like softwares you install on top of the os to perform some operation with that
RUN apk add --update gcc
RUN apk add --update redis

#startup command - tell the image what to do when it starts the container. 
CMD "redis-server"

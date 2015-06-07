FROM node:latest

MAINTAINER Abdullah "abdullah.rayeen@gmail.com"

RUN npm install -g redis-commander

EXPOSE 8081

CMD redis-commander --redis-host $REDIS_PORT_6379_TCP_ADDR --redis-port 6379 -p 8081
FROM debian:jessie
MAINTAINER Abdullah Haneef "abdullah.rayeen@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

ADD install.sh install.sh
RUN chmod +x install.sh && ./install.sh && rm install.sh

EXPOSE 8081
CMD bash -c 'redis-commander --redis-host $REDIS_PORT_6379_TCP_ADDR'
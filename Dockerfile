FROM debian:jessie

RUN apt-get update
RUN apt-get install -y coturn curl

COPY entrypoint.sh /entrypoint.sh

EXPOSE 3478 3478/udp

CMD ["/bin/sh", "/entrypoint.sh"]

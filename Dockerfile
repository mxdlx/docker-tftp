FROM alpine:latest
MAINTAINER aaraujo@protonmail.ch

WORKDIR /home

RUN apk add --update tftp-hpa && rm -rf /var/cache/apk/*
RUN chmod 777 /var/tftpboot

ADD entry.sh /home/entry.sh
RUN chmod +x /home/entry.sh

EXPOSE 69/udp

ENTRYPOINT ["./entry.sh"]

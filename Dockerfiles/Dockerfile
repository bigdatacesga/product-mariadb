FROM docker-registry.cesga.es:5000/mariadb:10.1.19 
MAINTAINER Jose Fuentes "jfuentes@cesga.es"

RUN apt-mark hold mariadb* mysql* && apt-get update \
    && apt-get install -y openssh-server openssh-client supervisor 

COPY ./sshd_config /etc/ssh/sshd_config

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22/tcp

ENV TERM=xterm

RUN mkdir /var/run/sshd

CMD ["/usr/bin/supervisord"]

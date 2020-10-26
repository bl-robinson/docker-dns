FROM debian:stable

RUN apt update && apt full-upgrade -y
RUN apt install -y bind9

COPY files/db.home.blrobinson.uk /etc/bind/db.home.blrobinson.uk
COPY files/db.rev.0.0.10.in-addr.arpa /etc/bind/db.rev.0.0.10.in-addr.arpa
COPY files/named.conf.local /etc/bind/named.conf.local

RUN /usr/sbin/named

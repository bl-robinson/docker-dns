FROM internetsystemsconsortium/bind9:9.21

COPY config/named.conf /etc/bind/
COPY config/db.home.blrobinson.uk /etc/bind/
COPY config/db.rev.0.0.10.in-addr.arpa /etc/bind/

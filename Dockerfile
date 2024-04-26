FROM internetsystemsconsortium/bind9:9.19

COPY config/named.conf.local /etc/bind/
COPY config/db.home.blrobinson.uk /etc/bind/
COPY config/db.rev.0.0.10.in-addr.arpa /etc/bind/

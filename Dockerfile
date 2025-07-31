FROM internetsystemsconsortium/bind9:9.21
# Ensure permissions are correct for BIND user (usually 'bind')
COPY config/named.conf /etc/bind/
COPY config/db.home.blrobinson.uk /etc/bind/
COPY config/db.rev.0.0.10.in-addr.arpa /etc/bind/
COPY config/db.2a06_61c2_27ae.rev /etc/bind/


# Container for home DNS.

Uses the official bind9 container from https://hub.docker.com/r/internetsystemsconsortium/bind9

Running locally for testing.
```
docker build . -t home-dns
docker run \
        --name=bind9 \
        --publish 53:53/udp \
        --publish 53:53/tcp \
        --publish 127.0.0.1:953:953/tcp \
        home-dns
```

Or just docker-compose up (if using docker-compose)

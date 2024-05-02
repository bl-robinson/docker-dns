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


Docker build push for home

```
docker build . -t container-registry.k8s.home.blrobinson.uk/docker-dns:latest
docker push container-registry.k8s.home.blrobinson.uk/docker-dns:latest
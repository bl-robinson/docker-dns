build:
	docker build . -t container-registry.k8s.home.blrobinson.uk/docker-dns:latest
push:
	docker push container-registry.k8s.home.blrobinson.uk/docker-dns:latest
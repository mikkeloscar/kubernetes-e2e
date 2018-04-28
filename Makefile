.PHONY: clean build.docker build.push

BINARY      ?= kubernetes-e2e
VERSION     ?= $(shell git describe --tags --always --dirty)
IMAGE       ?= mikkeloscar/$(BINARY)
TAG         ?= $(VERSION)
DOCKERFILE  ?= Dockerfile

default: build.docker

build.docker:
	docker build --rm -t "$(IMAGE):$(TAG)" -f $(DOCKERFILE) .

build.push: build.docker
	docker push "$(IMAGE):$(TAG)"

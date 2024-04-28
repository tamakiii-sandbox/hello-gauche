.PHONY: help build clean bash

IMAGE := tamakiii-sandbox/hello-gauche

help:
	@cat $(firstword $(MAKEFILE_LIST))

build:
	docker build -t $(IMAGE) .

clean:
	docker image rm $(IMAGE)

bash:
	docker run -it --rm $(IMAGE) $@

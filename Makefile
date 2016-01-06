image_name := ustwo/sauce-connect

DOCKER_TASK := docker run --rm -it

build:
	@docker build -t $(image_name) .
.PHONY: build

shell:
	@$(DOCKER_TASK) -v $(PWD):/home/nobody \
                  $(image_name) /bin/bash
.PHONY: shell

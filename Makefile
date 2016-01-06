image_name := ustwo/sauce-connect

DOCKER_TASK := docker run --rm -it

build:
	@docker build -t $(image_name) .
.PHONY: build

shell:
	@$(DOCKER_TASK) --entrypoint=/bin/bash \
                  -v $(PWD):/home/nobody \
                  $(image_name)
.PHONY: shell

version:
	@$(DOCKER_TASK) $(image_name)
.PHONY: version

help:
	@$(DOCKER_TASK) $(image_name) --help
.PHONY: help


test:
	@$(DOCKER_TASK) $(image_name) \
                  -P 8000 \
                  -u $(SAUCE_USERNAME) \
                  -k $(SAUCE_ACCESS_KEY) \
                  --tunnel-identifier foo
.PHONY: test

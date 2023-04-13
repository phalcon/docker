#!/usr/bin/make -f
IMAGE := phalcon/docker

.PHONY: build
build:
	docker build --progress plain --tag phalcon:8.2-cli --file 8.2/Dockerfile .

.PHONY: variants
variants: php
	@find php -name "Dockerfile" | sed 's/php\/\(.*\)\/Dockerfile/\1/'
	rm -rf php

.PHONY: php
php:
	git clone -q --depth 1 git@github.com:docker-library/php.git php

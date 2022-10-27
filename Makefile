#!/usr/bin/make -f
IMAGE := phalcon/docker

.PHONY: variants

# ---------------------------------------------------------------------------

variants: php
	@find php -name "Dockerfile" | sed 's/php\/\(.*\)\/Dockerfile/\1/'
	rm -rf php

php:
	git clone -q --depth 1 git@github.com:docker-library/php.git php

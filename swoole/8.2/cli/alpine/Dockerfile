FROM php:8.2-cli-alpine

RUN apk add --no-cache $PHPIZE_DEPS

RUN pecl install phalcon swoole && \
    docker-php-ext-enable phalcon swoole

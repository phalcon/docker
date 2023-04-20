FROM php:8.1-cli-alpine

RUN apk add --no-cache openssl-dev curl-dev $PHPIZE_DEPS

RUN docker-php-ext-install sockets curl && \
    printf "yes\nyes\nyes\nyes\n" | pecl install swoole && \
    pecl install phalcon && \
    docker-php-ext-enable phalcon swoole && \
    rm -rf /var/cache/apk/*

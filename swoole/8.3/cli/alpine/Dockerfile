FROM php:8.3-cli-alpine

RUN apk add --no-cache $PHPIZE_DEPS curl-dev openssl-dev
RUN printf "no\nyes\nyes\nyes\n" | pecl install swoole && \
    pecl install phalcon && \
    docker-php-ext-enable swoole phalcon

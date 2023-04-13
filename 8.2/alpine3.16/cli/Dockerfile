FROM php:8.2-cli-alpine3.16

ARG PHALCON_VERSION=5.2.1

RUN set -xe && \
        cd / && \
        docker-php-source extract && \
        # Install ext-phalcon
        curl -sSLO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz && \
        tar xzf /v${PHALCON_VERSION}.tar.gz && \
        docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) \
            /cphalcon-${PHALCON_VERSION}/build/phalcon \
        && \
        # Remove all temp files
        rm -r \
            /v${PHALCON_VERSION}.tar.gz \
            /cphalcon-${PHALCON_VERSION} \
        && \
        docker-php-source delete && \
        php -m

COPY docker-phalcon-* /usr/local/bin/

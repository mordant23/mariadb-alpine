FROM wodby/mariadb-actions-alpine:dev
MAINTAINER Wodby <hello@wodby.com>

RUN apk add --update mariadb \
                     mariadb-client \
                     pwgen \
    && mkdir -p /var/lib/mysql \
    && rm -rf /var/cache/apk/* /tmp/*

COPY rootfs /

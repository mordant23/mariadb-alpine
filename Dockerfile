FROM wodby/mariadb-actions-alpine:v1.0.0
MAINTAINER Wodby <hello@wodby.com>

RUN apk add --update mariadb \
                     mariadb-client \
                     pwgen  && \
    mkdir -p /var/lib/mysql && \
    mkdir -p /var/run/mysqld && \
    chown mysql:mysql /var/run/mysqld && \
    rm -rf /var/cache/apk/* /tmp/*

COPY rootfs /

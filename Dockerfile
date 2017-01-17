FROM alpine:3.5
MAINTAINER Wodby <admin@wodby.com>

RUN apk add --no-cache \
        mariadb \
        mariadb-client \
        pwgen && \

    # Remove default my.cnf
    rm /etc/mysql/my.cnf && \

    # Init dirs
    mkdir -p /var/lib/mysql && \
    mkdir -p /var/log/mysql && \
    mkdir -p /var/run/mysqld && \
    chown mysql:mysql /var/lib/mysql && \
    chown mysql:mysql /var/log/mysql && \
    chown mysql:mysql /var/run/mysqld && \

    # Disable confd service
    rm -rf /etc/services.d/*confd

COPY rootfs /

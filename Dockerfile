FROM wodby/base-alpine:3.4
MAINTAINER Wodby <admin@wodby.com>

RUN apk add --update mariadb \
                     mariadb-client \
                     pwgen  && \
    mkdir -p /var/lib/mysql && \
    mkdir -p /var/run/mysqld && \
    chown mysql:mysql /var/run/mysqld && \

    # Disable confd service
    rm -rf /etc/services.d/*confd && \

    rm -rf /var/cache/apk/* /tmp/*

COPY rootfs /

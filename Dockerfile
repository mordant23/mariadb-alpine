FROM alpine:3.5
MAINTAINER Joseph Presley<jpresley23@gmail.com>

RUN adduser -S mysql

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
    chown -R mysql:mysql /var/lib/mysql && \
    chown -R mysql:mysql /var/log/mysql && \
    chown -R mysql:mysql /var/run/mysqld && \

    # Disable confd service
    rm -rf /etc/services.d/*confd

COPY rootfs /
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
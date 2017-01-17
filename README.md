# MariaDB Alpine

This is a fork of Wodby's MariaDB alpine. It's generalized to allow parameterize default values. The MySQL initialization is taken from the official MariaDB docker image.

## Environment Variables
MYSQL_ROOT_PASSWORD - if one is not set, then a random one is generated
MYSQL_DATABASE - name of the initial database
MYSQL_USER - name of the user for the initial database
MYSQL_PASSWORD - password for the user

The other environment variables used by MariaDB's `docker-entrypoint.sh` is not supported even though they may appear in the `docker-entrypoint.sh`.

## Running the container
In most cases you should provide `mysqld --user=mysql`.
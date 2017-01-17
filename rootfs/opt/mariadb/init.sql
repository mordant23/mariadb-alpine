DELETE FROM mysql.user;
CREATE USER 'root'@'%' IDENTIFIED BY '<<root_password>>';
GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;
DROP DATABASE test;

CREATE DATABASE <<database>>;
CREATE USER '<<database_user>>'@'%' IDENTIFIED BY '<<database_user_password>>';
GRANT ALL ON `<<database>>`.* TO '<<database_user>>'@'%';
FLUSH PRIVILEGES;
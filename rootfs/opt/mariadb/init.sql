DELETE FROM mysql.user;
CREATE USER 'root'@'%' IDENTIFIED BY '<<root_password>>';
GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;
DROP DATABASE test;


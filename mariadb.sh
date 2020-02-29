yum -y install epel-release

yum -y install mariadb mariadb-server

systemctl enable mariadb.service && systemctl start mariadb.service && systemctl status mariadb.service

mysql_secure_installation

#MariaDB root pass: PASSWORD

mysql -u root -p

#create database ccnet_db character set = 'utf8';
#create database seafile_db character set = 'utf8';
#create database seahub_db character set = 'utf8';
#create user 'seafile'@'localhost' identified by 'PASSWORD';
#GRANT ALL PRIVILEGES ON `ccnet_db`.* to `seafile`@`localhost`;
#GRANT ALL PRIVILEGES ON `seafile_db`.* to `seafile`@`localhost`;
#GRANT ALL PRIVILEGES ON `seahub_db`.* to `seafile`@`localhost`;
#FLUSH PRIVILEGES;
#exit;

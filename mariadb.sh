echo "$(tput setaf 2)Install epel-release$(tput sgr 0)"
echo "$(tput setaf 3)$ yum -y install epel-release$(tput sgr 0)"
yum -y install epel-release

echo "$(tput setaf 2)Install mariadb mariadb-server$(tput sgr 0)"
echo "$(tput setaf 3)$ yum -y install mariadb mariadb-server$(tput sgr 0)"
yum -y install mariadb mariadb-server

echo "$(tput setaf 2)[Setup autorun$(tput sgr 0)"
echo "$(tput setaf 3)$ systemctl enable mariadb.service && systemctl start mariadb.service && systemctl status mariadb.service$(tput sgr 0)"
systemctl enable mariadb.service && systemctl start mariadb.service && systemctl status mariadb.service

echo "$(tput setaf 2)[Perform secure install$(tput sgr 0)"
echo "$(tput setaf 3)$ mysql_secure_installation$(tput sgr 0)"
mysql_secure_installation

#MariaDB root pass: PASSWORD

echo "$(tput setaf 2)[Connect to MariaDB$(tput sgr 0)"
echo "$(tput setaf 3)$ mysql -u root -p$(tput sgr 0)"
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

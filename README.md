# CentOS Setup Scripts

This repository contains my scripts tested with CentOS 7

# Instructions

1. Setup CentOS with ISO from http://isoredirect.centos.org/centos/7/isos/x86_64/
2. Use scripts as described below

### Scripts

| Script | Discription |
| ------ | ------ |
| [yum.sh](https://github.com/MrTakashi/centos_setup_scripts/blob/master/yum.sh) | Setup security patches autoupdate
| [ssh.sh](https://github.com/MrTakashi/centos_setup_scripts/blob/master/ssh.sh) | Create ssh-key and install it into server 
| [php7.sh](https://github.com/MrTakashi/centos_setup_scripts/blob/master/php7.sh) | Install PHP 7.x 
| [mariadb.sh](https://github.com/MrTakashi/centos_setup_scripts/blob/master/mariadb.sh) | Install Maria DB
| [apache.sh](https://github.com/MrTakashi/centos_setup_scripts/blob/master/apache.sh) | Install Apache
| [selinux_disable.sh](https://github.com/MrTakashi/centos_setup_scripts/blob/master/selinux_disable.sh) | SE Linux disable
| []() |  |

selinux_disable
# Run commands

yum
```sh
curl -L https://raw.githubusercontent.com/MrTakashi/centos_setup_scripts/master/yum.sh | sh
```
ssh
```sh
curl -L https://raw.githubusercontent.com/MrTakashi/centos_setup_scripts/master/ssh.sh | sh
```
php7
```sh
curl -L https://raw.githubusercontent.com/MrTakashi/centos_setup_scripts/master/php7.sh | sh
```
mariadb
```sh
curl -L https://raw.githubusercontent.com/MrTakashi/centos_setup_scripts/master/mariadb.sh | sh
```
apache
```sh
curl -L https://raw.githubusercontent.com/MrTakashi/centos_setup_scripts/master/apache.sh | sh
```
selinux_disable
```sh
curl -L https://raw.githubusercontent.com/MrTakashi/centos_setup_scripts/master/selinux_disable.sh | sh
```


### Todos

 - add new scripts
 - check this doc

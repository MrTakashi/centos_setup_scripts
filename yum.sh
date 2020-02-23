#!/bin/bash

# Update all existing packages
echo "$(tput setaf 2)[Update all existing packages]$(tput sgr 0)"
echo "$(tput setaf 3)$ yum check-update && yum -y update$(tput sgr 0)"
yum check-update && yum -y update

# Install and configure yum-cron for automatic updates
echo "$(tput setaf 2)[Install and configure yum-cron for automatic updates]$(tput sgr 0)"
echo "$(tput setaf 3)$ yum install -y yum-cron$(tput sgr 0)"
yum install -y yum-cron
	
# Say yum-cron to setup security updates automaticly
#	vi /etc/yum/yum-cron.conf
#		update_cmd = security		
#		apply_updates = yes			
echo "$(tput setaf 2)[Say yum-cron to setup security updates automaticly]$(tput sgr 0)"
echo "$(tput setaf 3)$ sed -i -r 's/^update_cmd = default.*/update_cmd = security/' /etc/yum/yum-cron.conf$(tput sgr 0)"
echo "$(tput setaf 3)$ sed -i -r 's/^apply_updates = no.*/apply_updates = yes/' /etc/yum/yum-cron.conf$(tput sgr 0)"
sed -i -r 's/^update_cmd = default.*/update_cmd = security/' /etc/yum/yum-cron.conf
sed -i -r 's/^apply_updates = no.*/apply_updates = yes/' /etc/yum/yum-cron.conf

#check: grep -P "(update_cmd|apply_updates)" /etc/yum/yum-cron.conf

# Setup new autorun service
echo "$(tput setaf 2)[Setup new autorun service]$(tput sgr 0)"
echo "$(tput setaf 3)$ systemctl enable yum-cron && systemctl start yum-cron && systemctl status yum-cron$(tput sgr 0)"
systemctl enable yum-cron && systemctl start yum-cron && systemctl status yum-cron

#check
echo "$(tput setaf 2)[Check]$(tput sgr 0)"
echo "$(tput setaf 3)$ tail /var/log/yum.log$(tput sgr 0)"
tail /var/log/yum.log

#!/bin/bash

# Update all existing packages
echo ">>> Update all existing packages"
echo "$ yum check-update && yum -y update"
yum check-update && yum -y update

# Install and configure yum-cron for automatic updates
echo ">>> Install and configure yum-cron for automatic updates"
echo "$ yum install -y yum-cron"
yum install -y yum-cron
	
# Say yum-cron to setup security updates automaticly
#	vi /etc/yum/yum-cron.conf
#		update_cmd = security		
#		apply_updates = yes			
echo ">>> Say yum-cron to setup security updates automaticly"
echo "$ sed -i -r 's/^update_cmd = default.*/update_cmd = security/' /etc/yum/yum-cron.conf"
echo "$ sed -i -r 's/^apply_updates = no.*/apply_updates = yes/' /etc/yum/yum-cron.conf"
sed -i -r 's/^update_cmd = default.*/update_cmd = security/' /etc/yum/yum-cron.conf
sed -i -r 's/^apply_updates = no.*/apply_updates = yes/' /etc/yum/yum-cron.conf

#check: grep -P "(update_cmd|apply_updates)" /etc/yum/yum-cron.conf

# Setup new autorun service
echo ">>> Setup new autorun service"
echo "$ systemctl enable yum-cron && systemctl start yum-cron && systemctl status yum-cron"
systemctl enable yum-cron && systemctl start yum-cron && systemctl status yum-cron

#check
echo ">>> Check"
echo "$ tail /var/log/yum.log"
tail /var/log/yum.log

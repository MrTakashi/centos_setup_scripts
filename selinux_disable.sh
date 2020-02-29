
#check
sestatus
#getenforce
#cat /etc/selinux/config

#disable
#vi /etc/selinux/config
#SELINUX=disabled

sed -i -r 's/^SELINUX=enforcing.*/SELINUX=disabled/' /etc/selinux/config


#reboot & check
reboot

sestatus

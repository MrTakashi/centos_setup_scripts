#check
echo "$(tput setaf 2)[Check SE Linux status]$(tput sgr 0)"
echo "$(tput setaf 3)$ sestatusg$(tput sgr 0)"

sestatus
#getenforce
#cat /etc/selinux/config

#disable
#vi /etc/selinux/config
#SELINUX=disabled
echo "$(tput setaf 2)[Disable SE Linux]$(tput sgr 0)"
echo "$(tput setaf 3)$ sed -i -r 's/^SELINUX=enforcing.*/SELINUX=disabled/' /etc/selinux/config$(tput sgr 0)"

sed -i -r 's/^SELINUX=enforcing.*/SELINUX=disabled/' /etc/selinux/config

echo "$(tput setaf 2)[Please reboot...]$(tput sgr 0)"

#reboot & check
#reboot

#sestatus

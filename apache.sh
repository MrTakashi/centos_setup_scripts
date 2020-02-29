echo "$(tput setaf 2)[Install Apache]$(tput sgr 0)"
echo "$(tput setaf 3)$ yum -y install httpd$(tput sgr 0)"
yum -y install httpd

echo "$(tput setaf 2)[Setup autorun$(tput sgr 0)"
echo "$(tput setaf 3)$ systemctl enable httpd.service && systemctl start httpd.service && systemctl status httpd.service$(tput sgr 0)"
systemctl enable httpd.service && systemctl start httpd.service && systemctl status httpd.service

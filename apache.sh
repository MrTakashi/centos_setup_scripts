yum -y install httpd

systemctl enable httpd.service && systemctl start httpd.service && systemctl status httpd.service
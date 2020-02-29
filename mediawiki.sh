echo "$(tput setaf 2)Download MediaWiki$(tput sgr 0)"
echo "$(tput setaf 3)$ curl -OL https://releases.wikimedia.org/mediawiki/1.34/mediawiki-1.34.0.tar.gz$(tput sgr 0)"
curl -OL https://releases.wikimedia.org/mediawiki/1.34/mediawiki-1.34.0.tar.gz

echo "$(tput setaf 2)Create folder "mediawiki" if it not exist$(tput sgr 0)"
echo "$(tput setaf 3)$ if [ ! -d "/var/www/html/mediawiki" ]; then mkdir -p /var/www/html/mediawiki; fi$(tput sgr 0)"
if [ ! -d "/var/www/html/mediawiki" ]; then mkdir -p /var/www/html/mediawiki; fi

echo "$(tput setaf 2)Move the downloaded file, unzip the package and change permisions$(tput sgr 0)"
echo "$(tput setaf 3)$ mv -f mediawiki-* mediawiki.tar.gz$(tput sgr 0)"
mv -f mediawiki-* mediawiki.tar.gz
echo "$(tput setaf 3)$ tar xvzf mediawiki.tar.gz --strip-components=1 -C /var/www/html/mediawiki$(tput sgr 0)"
tar xvzf mediawiki.tar.gz --strip-components=1 -C /var/www/html/mediawiki

echo "$(tput setaf 3)$ chown -R apache:apache /var/www/html/mediawiki$(tput sgr 0)"
chown -R apache:apache /var/www/html/mediawiki
echo "$(tput setaf 3)$ chmod -R 755 /var/www/html/mediawiki$(tput sgr 0)"
chmod -R 755 /var/www/html/mediawiki

echo "$(tput setaf 2)Restarting httpd.service$(tput sgr 0)"
echo "$(tput setaf 3)$ systemctl restart httpd.service$(tput sgr 0)"
systemctl restart httpd.service


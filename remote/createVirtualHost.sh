#! /bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: $(basename $0) DOMAIN"
    exit 1
fi
DOMAIN=$1
sudo mkdir -p /var/www/"$DOMAIN"/public_html
sudo chown -R $USER:$USER /var/www/"$DOMAIN"/public_html
sudo chmod -R 755 /var/www
sudo echo "hi" >> /var/www/"$DOMAIN"/public_html/index.html
sudo echo "<VirtualHost *:80>
    ServerAdmin admin@$DOMAIN
    ServerName $DOMAIN
    ServerAlias www.$DOMAIN
    DocumentRoot /var/www/$DOMAIN/public_html
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>" >> /etc/apache2/sites-available/"$DOMAIN".conf
sudo a2ensite "$DOMAIN".conf
sudo a2dissite 000-default.conf
sudo systemctl restart apache2
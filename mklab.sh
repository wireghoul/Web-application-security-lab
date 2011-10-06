#!/bin/sh
# Web application security lab setup script
# Written by Wireghoul - http://www.justanotherhacker.com/

echo "Making your web application security lab"
mkdir -p /var/www/appseclab/public_html
mkdir /var/www/appseclab/etc
mkdir /var/www/appseclab/tmp
mkdir /var/log/apache2/appseclab
chown www-data /var/www/appseclab/tmp

echo 'Welcome to the lair!' > /var/www/appseclab/webroot/index.html
ln -s /var/www/appseclab/etc/moon.lair /etc/apache2/sites-available
ln -s /var/www/appseclab/etc/vulcano.lair /etc/apache2/sites-available

a2ensite moon.lair
a2ensite vulcano.lair
apache2ctl graceful

echo "Setup is complete, you should read http://www.justanotherhacker.com/articles/creating-a-web-application-security-lab-part-2.html for details on how to access and secure your appseclab"

#!/bin/bash
set -e

dnf update -y

dnf install -y \
httpd \
php \
php-cli \
php-fpm \
php-mysqlnd \
php-json \
php-gd \
php-mbstring \
php-xml \
wget \
tar

systemctl enable --now httpd

cd /tmp

wget https://wordpress.org/latest.tar.gz

tar -xzf latest.tar.gz

cp -r wordpress/* /var/www/html/

chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

systemctl restart httpd
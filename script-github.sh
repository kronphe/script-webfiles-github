#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/kronphe/jupiter-site/raw/main/jupiter-main.zip
unzip jupiter-main.zip
cp -r /var/www/html/jupiter-main/* /var/www/html
rm -rf jupiter-main.zip jupiter-main
systemctl enable httpd
systemctl start httpd

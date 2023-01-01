#!/usr/bin/env bash
cd /etc/yum.repos.d/
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
yum update -y
yum upgrade
echo "Installing apache and setting in up"
yum install -y httpd
cp -r /vagrant/html* /var/www/html/
systemctl start httpd.service
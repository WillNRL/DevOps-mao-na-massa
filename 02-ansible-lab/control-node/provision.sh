#!/bin/bash
echo 'Add os mirrolists ao CentOS/8'
cd /etc/yum.repos.d/
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update -y
echo "Inicio da instalacao do ansible"
sudo yum -y install python3
sudo python3 -m pip -V
sudo python3 pip install --upgrade setuptools
sudo python3 pip install --upgrade pip
sudo python3 -m pip install --user ansible
#https://github.com/facebook/prophet/issues/418
#ERRO --> Command "python setup.py egg_info" failed with error code 1 in /tmp/pip-build-BqMhb7/matplotlib/ #418
cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.168.1.3 app01
192.168.1.4 db01
EOT
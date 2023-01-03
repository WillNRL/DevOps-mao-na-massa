#!/bin/bash
echo "Inicio da instalacao do ansible"
sudo apt-get install -y python3 curl wget
echo "alias python='python3'" >> .bashrc
sudo python3 -m pip install --user ansible
cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.168.1.3 app01
192.168.1.4 db01
EOT
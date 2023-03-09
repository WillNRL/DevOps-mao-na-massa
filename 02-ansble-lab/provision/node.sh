#!/bin/bash
echo "Inicio da instalacao do ansible"
sudo apt-get update
sudo apt-get install -y python3 pip curl wget
alias python='python3'
sed -i -e 's/alias python='python3'/alias python='python3'/g' ~/.bashrc
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible
cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.168.1.3 app01
192.168.1.4 db01
EOT
#!/bin/bash
echo "Inicio da instalacao do ansible"
sudo apt-get install -y python3 pip curl wget
echo "alias python='python3'" >> .bashrc
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible
echo ""
cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.168.1.3 app01
192.168.1.4 db01
EOT
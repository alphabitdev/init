#! /bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: $(basename $0) USER KEY_URL"
    exit 1
fi
if [ $# -ne 2 ]
then
    KEY_URL="https://raw.githubusercontent.com/alphabitdev/init/master/key.pub"
else
    KEY_URL=$2
fi
USER=$1
sudo adduser "$USER"
sudo usermod -aG sudo "$USER"
su "$USER"
cd ~
mkdir ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
wget https://raw.githubusercontent.com/alphabitdev/init/master/key.pub
cat key.pub >> .ssh/authorized_keys
rm key.pub
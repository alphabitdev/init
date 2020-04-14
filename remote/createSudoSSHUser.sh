sudo adduser alpha
sudo usermod -aG sudo alpha
su alpha
cd ~
mkdir ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
wget https://raw.githubusercontent.com/alphabitdev/init/master/key.pub
cat key.pub >> .ssh/authorized_keys
rm key.pub
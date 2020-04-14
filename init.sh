sudo adduser alpha
sudo usermod -aG sudo alpha
wget https://github.com/alphabitdev/init/key.pub
cat key.pub >> .ssh/authorized_keys
rm key.pub

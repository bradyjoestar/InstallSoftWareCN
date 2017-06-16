curl -sSL https://get.daocloud.io/docker | sh

# install docker-compose
curl -L https://get.daocloud.io/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# install 
daocloud speeder
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://6936ef09.m.daocloud.io
sudo systemctl restart docker

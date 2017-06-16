apt-get install python gcc make g++ 
wget https://npm.taobao.org/mirrors/node/v6.9.1/node-v6.9.1.tar.gz
tar zxvf node-v6.9.1.tar.gz 
cd node-v6.9.1.tar.gz
./configure 
sudo make install 

npm install -g cnpm --registry=http://registry.npm.taobao.org

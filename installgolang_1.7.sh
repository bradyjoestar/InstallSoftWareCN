
# get the source code of go1.4.3
cd ~/
wget https://github.com/golang/go/archive/go1.4.3.tar.gz
tar -xzvf go1.4.3.tar.gz

# compile and install go1.4.3
cd go-go1.4.3
cd src
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 ./make.bash

# If you see the following:
# Installed Go for linux/amd64 in /root/go-go1.4.3
# Installed commands in /root/go-go1.4.3/bin
# it is successful!
cd ~/
# copy ~/go-go1.4.3 to $GOROOT_BOOTSTRAP(default is ~/go1.4)
cp ~/go-go1.4.3 ~/go1.4 -rf

# get the source code of go1.7.5
wget https://github.com/golang/go/archive/go1.7.5.tar.gz
tar -xzvf go1.7.5.tar.gz

# compile and install go1.7.5
cd go-go1.7.5
cd src
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 ./make.bash

# If you see the following:
# Installed Go for linux/amd64 in /root/go-go1.7.5
# Installed commands in /root/go-go1.7.5/bin
# it is successful!
cd ~/
# set $GOPATH and $PATH
sed -i '$a\export PATH=$PATH:/root/go-go1.7.5/bin ' /etc/profile
sed -i '$a\export GOPATH=/root/go1.7.5-projects ' /etc/profile

mkdir -p /root/go1.7.5-projects/src/github.com/hyperledger

source /etc/profile

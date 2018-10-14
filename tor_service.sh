#!/bin/bash

cd ~/ 
sudo DEBIAN_FRONTEND=noninteractive apt-get update -y && sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install make -y
wget https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.50.tar.gz
tar xzvf lighttpd-1.4.50.tar.gz
cd ~/lighttpd-1.4.50
echo './configure \' > config.sh
echo '"--prefix=$HOME/light" \' >> config.sh
echo '"--disable-ipv6" \' >> config.sh
echo '"--without-pcre" \' >> config.sh
echo '"--with-zlib" \' >> config.sh
echo '"--without-bzip2"' >> config.sh
sh config.sh
make
make install
mkdir ~/light
mv lighttpd.conf ~/light/

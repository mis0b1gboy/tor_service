#!/bin/bash

cd ~/ 
sudo DEBIAN_FRONTEND=noninteractive apt-get update -y && sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install build-essential libevent-dev tor openssl lighttpd zlib1g-dev libssl-dev  -y
cp lighttpd.conf /etc/lighttpd
sudo lighttpd-enable-mod userdir
sudo service lighttpd reload
mkdir /home/ubuntu/hidden_service
mkdir /home/ubuntu/other_hidden_service
sudo cp torrc /etc/tor
chmod 700 /home/ubuntu/hidden_service
chmod 700 /home/ubuntu/other_hidden_service

#!/usr/bin/env bash

apt-get update
apt-get -y upgrade

# Dependencies
apt-get install -y build-essential libsqlite3-0 libgeoip1 redis-server librrd4 libhiredis0.10 libcurl3 gdb
apt-get install -y libtool autoconf automake subversion rrdtool wget pkg-config git
apt-get install -y libsqlite3-dev libhiredis-dev libpcap-dev  libgeoip-dev libcurl4-gnutls-dev libjson-c-dev libglib2.0-dev libxml2-dev libmysqlclient-dev

# ndpi
cd /home/vagrant
pwd
git clone https://github.com/ntop/nDPI.git
cd nDPI
./autogen.sh
make

# ntopng
cd /home/vagrant
pwd
git clone https://github.com/ntop/ntopng
cd ntopng
pwd
./autogen.sh
./configure
make geoip
make 

# nBox
cd /home/vagrant
pwd
wget http://apt.ntop.org/14.04/all/apt-ntop.deb
sudo dpkg -i apt-ntop.deb
rm -rf apt-ntop.deb
apt-get clean all
apt-get update
wget http://launchpadlibrarian.net/49822407/snmp-mibs-downloader_1.1_all.deb
apt-get install smistrip
dpkg -i snmp-mibs-downloader_1.1_all.deb 
rm -rf  snmp-mibs-downloader_1.1_all.deb 
apt-get install -y nbox

#!/bin/bash

echo "futurerestore compile script for Ubuntu 20.04 and 20.10"
echo

sudo add-apt-repository universe
sudo apt update
sudo apt install -y pkg-config libtool automake g++ python-dev libzip-dev libcurl4-openssl-dev cmake libssl-dev libusb-1.0-0-dev libreadline-dev libbz2-dev libpng-dev git
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig

rm -rf futurerestore_build
mkdir futurerestore_build
cd futurerestore_build
git clone https://github.com/libimobiledevice/libplist
git clone https://github.com/libimobiledevice/libusbmuxd
git clone https://github.com/libimobiledevice/libimobiledevice 
cd libplist ; ./autogen.sh ; make ; sudo make install ; cd ..
cd libusbmuxd ; ./autogen.sh ; make ; sudo make install ; cd ..
cd libimobiledevice ; ./autogen.sh ; make ; sudo make install ; cd ..
git clone https://github.com/lzfse/lzfse
git clone https://github.com/libimobiledevice/libirecovery
git clone https://github.com/LukeZGD/libgeneral
git clone https://github.com/LukeZGD/libfragmentzip
git clone https://github.com/LukeZGD/img4tool
git clone --recursive https://github.com/marijuanARM/futurerestore
cd lzfse ; make ; sudo make install ; cd ..
cd libirecovery ; ./autogen.sh ; make ; sudo make install ; cd ..
cd libgeneral ; ./autogen.sh ; make ; sudo make install ; cd ..
cd libfragmentzip ; ./autogen.sh ; make ; sudo make install ; cd ..
cd img4tool ; ./autogen.sh ; make ; sudo make install ; cd ..
cd futurerestore && ./autogen.sh ; make ; sudo make install ; cd ..
sudo ldconfig

echo
echo "Done"
echo "Run futurerestore AT YOUR OWN RISK; Things are not guaranteed to work"
echo
echo "Launching futurerestore after compiling: sudo futurerestore <arguments>"

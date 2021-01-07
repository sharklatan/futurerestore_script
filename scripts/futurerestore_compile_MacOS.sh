#!/bin/sh
# macOS 10.15

mkdir build
cd build

sudo rm -f /usr/local/lib/libfragmentzip.*
sudo rm -f /usr/local/lib/libideviceactivation.*
sudo rm -f /usr/local/lib/libimobiledevice.*
sudo rm -f /usr/local/lib/libirecovery.*
sudo rm -f /usr/local/lib/libplist++.*
sudo rm -f /usr/local/lib/libplist.*
sudo rm -f /usr/local/lib/libusbmuxd.*
sudo rm -f /usr/local/lib/libzip.*

sudo rm -rf /usr/local/include/libfragmentzip
sudo rm -f /usr/local/include/libideviceactivation.h
sudo rm -rf /usr/local/include/libimobiledevice
sudo rm -f /usr/local/include/libirecovery.h
sudo rm -rf /usr/local/include/plist
sudo rm -f /usr/local/include/usbmuxd*
sudo rm -f /usr/local/include/zip.h
sudo rm -f /usr/local/include/zipconf.h

sudo rm -f /usr/local/lib/libfragmentzip.la
sudo rm -f /usr/local/lib/libideviceactivation.la
sudo rm -f /usr/local/lib/libimobiledevice.la
sudo rm -f /usr/local/lib/libirecovery.la
sudo rm -f /usr/local/lib/libplist++.la
sudo rm -f /usr/local/lib/libplist.la
sudo rm -f /usr/local/lib/libusbmuxd.la

sudo rm -f /usr/local/lib/pkgconfig/libfragmentzip.pc
sudo rm -f /usr/local/lib/pkgconfig/libideviceactivation*.pc
sudo rm -f /usr/local/lib/pkgconfig/libimobiledevice*.pc
sudo rm -f /usr/local/lib/pkgconfig/libirecovery.pc
sudo rm -f /usr/local/lib/pkgconfig/libplist++.pc
sudo rm -f /usr/local/lib/pkgconfig/libplist.pc
sudo rm -f /usr/local/lib/pkgconfig/libusbmuxd.pc
sudo rm -f /usr/local/lib/pkgconfig/libzip.pc

sudo rm -f /usr/local/lib/libfragmentzip.a
sudo rm -f /usr/local/lib/libideviceactivation.a
sudo rm -f /usr/local/lib/libimobiledevice.a
sudo rm -f /usr/local/lib/libirecovery.a
sudo rm -f /usr/local/lib/libjssy.a
sudo rm -f /usr/local/lib/libplist++.a
sudo rm -f /usr/local/lib/libplist.a
sudo rm -f /usr/local/lib/libusbmuxd.a

brew install make cmake automake autoconf libtool pkg-config curl openssl readline libplist libzip libimobiledevice libirecovery


export PATH=/usr/local/opt/openssl/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$LD_LIBRARY_PATH
export CPATH=/usr/local/opt/openssl/include:$CPATH
export LIBRARY_PATH=/usr/local/opt/openssl/lib:$LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig
export LIBRARY_PATH=/usr/local/opt/libzip/lib:$LIBRARY_PATH




git clone --recursive https://github.com/LukeZGD/libgeneral
echo
echo "Done Clone libgeneral"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/lzfse/lzfse
echo
echo "Done Clone lzfse"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/LukeZGD/img4tool
echo
echo "Done Clone img4tool"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/LukeZGD/
echo
echo "Done Clone libfragmentzip"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/libimobiledevice/libimobiledevice
echo
echo "Done Clone libimobiledevice"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/libimobiledevice/libplist
echo
echo "Done Clone libplist"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/nih-at/libzip.git
echo
echo "Done Clone libzip"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/marijuanARM/idevicerestore
echo
echo "Done Clone idevicerestore"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/libimobiledevice/libirecovery
echo
echo "Done Clone libirecovery"
sleep 3s # Waits 5 seconds.
clear
git clone --recursive https://github.com/marijuanARM/futurerestore
echo
echo "Done Clone futurerestore"
sleep 3s # Waits 5 seconds.
clear



cd libzip
cmake . # -DBUILD_SHARED_LIBS=off
# cmake3 .
# ln -s /usr/local/lib64/libzip.so.5.0 /lib64/libzip.so
# ln -s /usr/local/lib64/libzip.so.5.0 /lib64/libzip.so.5
make && sudo make install
echo
echo "Done make libzip"
sleep 3s # Waits 5 seconds.
clear
cd ..

cd lzfse
cmake . # -DBUILD_SHARED_LIBS=off
# cmake3 .
# ln -s /usr/local/lib64/libzip.so.5.0 /lib64/libzip.so
# ln -s /usr/local/lib64/libzip.so.5.0 /lib64/libzip.so.5
make && sudo make install
echo
echo "Done make lzfse"
sleep 3s # Waits 5 seconds.
clear
cd ..

cd img4tool
./autogen.sh && make && sudo make install
echo
echo "Done make img4tool"
sleep 3s # Waits 5 seconds.
clear
cd ..

cd libgeneral
./autogen.sh && make && sudo make install
echo
echo "Done make libgeneral"
sleep 3s # Waits 5 seconds.
clear
cd ..

cd libfragmentzip
./autogen.sh && make && sudo make install
echo
echo "Done make libfragmentzip"
sleep 3s # Waits 5 seconds.
clear
cd ..


cd libimobiledevice
./autogen.sh && make && sudo make install
echo
echo "Done make libimobiledevice"
sleep 3s # Waits 5 seconds.
clear
cd ..

cd libirecovery
./autogen.sh && make && sudo make install
echo
echo "Done make libirecovery"
sleep 3s # Waits 5 seconds.
clear
cd ..


cd idevicerestore
./autogen.sh && make && sudo make install
echo
echo "Done make idevicerestore"
sleep 3s # Waits 5 seconds.
clear
cd ..


cd futurerestore
./autogen.sh && make && sudo make install
echo
echo "Done make futurerestore"
sleep 3s # Waits 5 seconds.
#clear
cd ..

echo
echo "Done"
echo
echo "futurerestore has installed in /usr/local/bin"
echo
echo
echo "Launching futurerestore after compiling: futurerestore <arguments>"


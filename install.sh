#!/bin/bash

#VPN Installation Script for FPU (Unofficial)
#James Andrews <jandrews7348@floridapoly.edu>

function installer(){
    sudo apt-get install \
        build-essential gettext autoconf automake libproxy-dev \
        libxml2-dev libtool vpnc-scripts pkg-config \
        libgnutls-dev
}
function installdeb(){
    sudo apt-get install \
        build-essential gettext autoconf automake libproxy-dev \
        libxml2-dev libtool vpnc-scripts pkg-config \
        libgnutls28-dev
}
installer || installdeb
function dockerinst(){
    docker build -t openconnect .
    docker run -ti --rm --privileged --net=host openconnect
    # ./openconnect --protocol=gp vpn.floridapoly.edu
}
git clone https://github.com/Nat-As/openconnect.git
chmod -Rv 0777 openconnect
cd openconnect
./autogen.sh
./configure
make
sudo make install && sudo ldconfig || dockerinst




#!/bin/bash

#VPN Installation Script for FPU (Unofficial)
#James Andrews <jandrews7348@floridapoly.edu>

function installer(){
    sudo apt-get install \
        build-essential gettext autoconf automake libproxy-dev \
        libxml2-dev libtool vpnc-scripts pkg-config \
        libgnutls-dev
    ./configure
    make
    make install
}
function installdeb(){
    sudo apt-get install \
        build-essential gettext autoconf automake libproxy-dev \
        libxml2-dev libtool vpnc-scripts pkg-config \
        libgnutls28-dev
}
installer || installdeb

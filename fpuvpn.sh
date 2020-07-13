#!/bin/bash

#Connect to the FPU VPN after installing it with ./install.sh
#James Andrews <jandrews7348@floridapoly.edu>
echo "Welcome to Floridapoly.org"
echo "--------------------------"
echo "Please enter your username:"
read u

echo "Connecting..."
sudo ./openconnect --protocol=gp -u $u vpn.floridapoly.edu

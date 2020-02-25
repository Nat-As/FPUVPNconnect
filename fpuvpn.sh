#!/bin/bash

#Connect to the FPU VPN after installing it with ./install.sh
#James Andrews <jandrews7348@floridapoly.edu>

echo Starting up docker...
sudo apt update || echo Root required!
sudo docker run -ti --rm --privileged --net=host openconnect || echo Failed to run! Please install docker-ce!

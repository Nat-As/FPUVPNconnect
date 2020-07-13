# FPUVPNconnect
Connect to the Florida Polytechnic University VPN on Linux

# Requirements
+ libxml2
+ zlib
+ Either OpenSSL or GnuTLS (v3.2.10+)
+ pkg-config

# Installation
1. Download from [source](http://www.infradead.org/openconnect/download.html)
    1. Note: Must have version greater than 8.0 to access global protect networks
2. Extract ```tar -xvzf openconnect-8.10.tar.gz ```
3. Copy install.sh from this repository into the directory and run it to install openconnect.
4. Run ```./fpuvpn.sh``` to connect.

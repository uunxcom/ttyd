#!/bin/sh
##

cd /root
wget https://github.com/tsl0922/ttyd/releases/download/1.7.1/ttyd.x86_64 --no-check-certificate
mv ttyd.x86_64 ttyd
chmod +x ttyd
mv ttyd /usr/sbin/

# Run v2ray
ttyd bash

#!/bin/bash

echo 'Setup Started'
apt-get update

echo 'Installing pip'
apt-get install python3-pip -y

echo 'Installing Flask'
sudo -u pi pip3 install Flask

echo 'Adding startup script to rc.local'
path=$(pwd)
echo "bash ${path}/on_startup.sh" >> /etc/rc.local
echo 'Running startup script'
sudo -u pi bash ${path}/on_startup.sh

#!/bin/bash

apt update
sudo -u pi pip install Flask
path=$(pwd)
echo 'bash ${path##*/on_startup.sh}' >> /etc/rc.local
sudo -u pi bash ${path##*/on_startup.sh}

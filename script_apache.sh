#!/bin/bash
echo "atualizando o server"
sudo apt-get update
sudo apt-get upgrade -y

echo "baixando as aplicações"

sudo apt-get install apache2 -y
sudo apt-get instal unzip -y
cd /tmp
wget htpps://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/




#!/bin/sh
echo 'Wersja NodeJS:'
read nodeversion

sudo apt update
sudo apt -y upgrade
sudo apt install -y curl
sudo apt install -y apache2 php7.4-cli mysql-server
sudo mysql_secure_installation
sudo mysql -u root -p
sudo apt install -y phpmyadmin python3 gimp
sudo apt install -y npm
curl -fsSL https://deb.nodesource.com/setup_$nodeversion.x | sudo -E bash -
sudo apt install -y nodejs
#!/bin/sh
echo 'Wersja NodeJS:'
read nodeversion

sudo apt update
sudo apt -y upgrade
sudo apt install -y curl
sudo apt install -y apache2 php7.4-cli mysql-server
sudo mysql_secure_installation
sudo mysql -u root -p
sudo apt install -y phpmyadmin
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y gimp
sudo apt install -y npm
sudo apt purge -y nodejs
sudo apt -y auto-remove
curl -fsSL https://deb.nodesource.com/setup_$nodeversion.x | sudo -E bash -
sudo apt install -y nodejs
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
echo 'deb [trusted=yes] https://repo.symfony.com/apt/ /' | sudo tee /etc/apt/sources.list.d/symfony-cli.list
sudo apt update
sudo apt install symfony-cli
sudo npm install -g @vue/cli

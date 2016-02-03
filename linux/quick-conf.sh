#!/bin/sh
#http://askubuntu.com/questions/519/how-do-i-write-an-application-install-shell-script
cd $HOME
apt-get update
apt-get install htop -y
apt-get install iftop -y
apt-get install git -y
#si version supérieure à 14.04
apt-get install docker.io -y
sudo apt-get install apache2 -y
apt-get install mysql-server -y
apt-get install npm -y
apt-get install vlc -y
apt-get install ffmpeg -y

#Add repo php7
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install php7.0 -y
apt-get install php7.0-mysql -y
php -r "readfile('https://getcomposer.org/installer');" | php
mv composer.phar /usr/local/bin/composer


apt-get install transmission -y
#Install Atom
wget -P $HOME/atom/ https://atom.io/download/deb && dpkg --install $HOME/atom/deb

#Tweak
add-apt-repository ppa:tualatrix/next -y
apt-get update
apt-get install ubuntu-tweak

#Indicator SysMonitor 
add-apt-repository ppa:fossfreedom/indicator-sysmonitor
apt-get update
apt-get install indicator-sysmonitor

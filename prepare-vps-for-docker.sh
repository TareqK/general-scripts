#!/bin/sh
touch /.dockerenv
apt purge -f -y apache2
apt update && apt upgrade -f -y
apt install docker.io docker-compose docker ufw openjdk-8-jre  -f -y
ufw default allow outgoing
ufw default deny incoming
ufw allow http
ufw allow https
ufw allow ssh
ufw --force enable 
systemctl enable ufw
reboot

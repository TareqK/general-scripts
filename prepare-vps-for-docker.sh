#!/bin/sh
touch /.dockerenv
apt purge -f -y apache2
apt update && apt upgrade -f -y
apt install docker.io docker-compose docker ufw openjdk-11-jre cockpit cockpit-docker -f -y
ufw default allow outgoing
ufw default deny incoming
ufw allow http
ufw allow https
ufw allow ssh
ufw allow 9090
ufw allow 2377
ufw alow 7946
ufw allow 4789
ufw --force enable 
systemctl enable ufw
reboot

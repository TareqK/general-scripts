#!/bin/bash

#Run as root
apt-get update
apt-get install -f -y apt-transport-https  ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" 
apt-get update 
apt-get install docker-ce docker-ce-cli containerd.io -f -y
shutdown -h now

# Need to enable   keyctl=1,nesting=1 
# See https://discuss.linuxcontainers.org/t/working-install-of-docker-ce-in-lxc-unprivileged-container-in-proxmox/3828/10

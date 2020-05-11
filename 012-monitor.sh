#!/bin/bash

sudo apt-get update

# iftop
sudo apt-get install iftop

# Monitorix: https://www.monitorix.org/doc-debian.html
# sudo apt-get install monitorix
sudo apt-get install rrdtool perl libwww-perl libmailtools-perl libmime-lite-perl librrds-perl libdbi-perl libxml-simple-perl libhttp-server-simple-perl libconfig-general-perl libio-socket-ssl-perl
wget https://www.monitorix.org/monitorix_3.11.0-izzy1_all.deb
sudo dpkg -i monitorix*.deb
sudo apt-get -f install
service monitorix status
tail -f /var/log/monitorix

# Glances https://nicolargo.github.io/glances/
# https://www.booleanworld.com/install-use-glances-monitor-linux-systems/
curl -L https://bit.ly/glances | /bin/bash
glances -w -p 61001
ssh -NfL 5000:localhost:5000 ai-lab-2-external
autossh -M 0 -f -T -N ai-lab-2-external

autossh -M 20000 -f -N your_public_server -R 1234:localhost:22 -C
# https://thomas-barthelemy.github.io/2016/05/02/permanent-ssh-tunnel/
autossh -M 0 -f -q -N -L 8000:REMOTE_HOST:REMOTE_PORT SSH_USER@SSH_HOST

# Clear RAM + SWAP
sudo swapoff -a && sudo swapon -a

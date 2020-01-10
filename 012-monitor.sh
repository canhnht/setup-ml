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
ssh -NfL 60002:localhost:60002 ai-lab-2-external

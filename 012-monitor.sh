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
glances -w -p 60003
ssh -NfL 60004:localhost:60004 ai-lab-4
ssh -NfL 50099:localhost:50099 vais-4

ssh -NfL 8091:localhost:8091 ai-lab-1
ssh -NfL 8881:localhost:8881 ai-lab-1

ssh -NfL 8094:localhost:8094 ai-lab-4
ssh -NfL 8884:localhost:8884 ai-lab-4

ssh -NfL 8093:localhost:8093 ai-lab-3
ssh -NfL 8883:localhost:8883 ai-lab-3

# Clear RAM cache and SWAP
# https://www.tecmint.com/clear-ram-memory-cache-buffer-and-swap-space-on-linux/
sudo swapoff -a && sudo swapon -a
echo "echo 1 > /proc/sys/vm/drop_caches"

sudo apt update -y

# https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-18-04/
sudo apt install -y openssh-server
sudo apt-get install openssh-client
sudo systemctl status ssh

# Start/stop SSH server
sudo systemctl start ssh
sudo systemctl stop ssh
sudo systemctl restart ssh

# Enable/disable during system boot
sudo systemctl enable ssh
sudo systemctl disable ssh

# Get IP address
ip a

# SSH access
ssh-key-gen
ssh-copy-id ...

# https://dev.to/zduey/how-to-set-up-an-ssh-server-on-a-home-computer

# Firewall https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-with-ufw-on-ubuntu-18-04
# Static IP https://linuxize.com/post/how-to-configure-static-ip-address-on-ubuntu-18-04/

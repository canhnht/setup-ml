sudo apt update -y

# https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-18-04/
sudo apt install -y openssh-server
sudo apt-get install openssh-client
sudo systemctl status ssh

# Start/stop SSH server
sudo systemctl start ssh
sudo systemctl stop ssh

# Enable/disable during system boot
sudo systemctl enable ssh
sudo systemctl disable ssh

# Get IP address
ip a

# https://dev.to/zduey/how-to-set-up-an-ssh-server-on-a-home-computer

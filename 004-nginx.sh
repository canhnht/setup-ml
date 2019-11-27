sudo apt update -y

# https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04
sudo apt install -y nginx
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status
sudo systemctl status nginx
curl -4 icanhazip.com

# https://towardsdatascience.com/my-first-step-for-deep-learning-adventure-with-udacity-and-coursera-ee135042ac1e
# https://towardsdatascience.com/tensorflow-jupyter-notebook-nvidia-diy-setup-473acfe5b0e

#!/bin/bash

# https://vitux.com/add-and-manage-user-accounts-in-ubuntu-18-04-lts/

# List users
awk -F':' '$2 ~ "\$" {print $1}' /etc/shadow

# Add user
sudo adduser vais

# Verify
grep '^vais' /etc/passwd

# Delete user
sudo deluser newuser
sudo userdel USERNAME -f

# Verify deletion
id USERNAME

# View groups
groups vais

# Add to group
sudo adduser vais [groupname]

# Remove group
sudo gpasswd -d vais lpadmin

# Set password
sudo passwd vais

# Allow SSH
https://docs.bitnami.com/bch/faq/administration/provide-additional-ssh-access/

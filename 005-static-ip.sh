#!/bin/bash

# List available connections
nmcli con show

# Show router IP
ip route

# Modify connection
# nmcli con mod "Wired connection 1"
#   ipv4.addresses "HOST_IP_ADDRESS/IP_NETMASK_BIT_COUNT"
#   ipv4.gateway "IP_GATEWAY"
#   ipv4.dns "PRIMARY_IP_DNS,SECONDARY_IP_DNS"
#   ipv4.dns-search "DOMAIN_NAME"
#   ipv4.method "manual"
sudo nmcli con mod "Wired connection 1" \
  ipv4.addresses "192.168.1.74/24" \
  ipv4.gateway "192.168.1.1" \
  ipv4.dns "192.168.1.1,8.8.8.8,8.8.4.4" \
  ipv4.method "manual"

sudo nmcli con mod "Wired connection 2" \
  ipv4.addresses "192.168.1.74/24" \
  ipv4.gateway "192.168.1.1" \
  ipv4.dns "192.168.1.1,8.8.8.8,8.8.4.4" \
  ipv4.method "manual"

sudo nmcli con mod "pr500m-53801b-1" \
  ipv4.addresses "192.168.1.74/24" \
  ipv4.gateway "192.168.1.1" \
  ipv4.dns "192.168.1.1,8.8.8.8,8.8.4.4" \
  ipv4.method "manual"

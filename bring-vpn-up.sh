#!/bin/sh
sudo date >> /var/log/vpn-gateway.log;
sudo echo "Starting Unbound DNS service." | tee -a /var/log/vpn-gateway.log
sudo systemctl restart unbound
sudo date >> /var/log/vpn-gateway.log;
sudo echo "Connecting to NordVPN service." | tee -a /var/log/vpn-gateway.log
sudo /usr/bin/nordvpn c be

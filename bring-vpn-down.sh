#!/bin/sh
sudo date >> /var/log/vpn-gateway.log;
sudo echo "Disconnecting from NordVPN service." | tee -a /var/log/vpn-gateway.log
sudo /usr/bin/nordvpn d

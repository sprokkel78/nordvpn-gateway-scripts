# nordvpn-gateway-scripts

These scripts  enable/disable the nordvpn connection upon activation/disactivation of the chosen network device and they enable the LAN to use this network connection as a gateway to the nordvpn tunnel.

1. Place 01-vpn-up in /etc/NetworkManager/dispatcher.d/
2. Place 02-vpn-down in /etc/NetworkManager/dispatcher.d/
3. Edit these files to set your network device and homedirectory
4. Place vpn-gateway-start.sh in your homedirectory
5. Place vpn-gateway-stop.sh in your homedirectory
6. Again, edit these files to set your network settings..
7. Place bring-vpn-up.sh in your homedirectory
8. Place bring-vpn-down.sh in your homedirectory
9. Done

All files should be executable.  After reboot your vpn connection should now be in auto-connect mode and the lan has access to the gateway.

Note: "NordVPN must be configured to use OPENVPN for the gateway to work."

# nordvpn-gateway-scripts

These scripts:
	. enable/disable the nordvpn connection upon activation/disactivation of the chosen network device.
	. enable the LAN to use this network connection as a gateway to the nordvpn tunnel.

1. Place 01-vpn-up in /etc/NetworkManager/dispatcher.d/
2. Place 02-vpn-down in /etc/NetworkManager/dispatcher.d/
3. Edit these files to set your network device and homedirectory
4. Place vpn-gateway-start.sh in your homedirectory
5. Place vpn-gateway-stop.sh in your homedirectory

Note: "NordVPN must be configured to use OPENVPN for the gateway to work."

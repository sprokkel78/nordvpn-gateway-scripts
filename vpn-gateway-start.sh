#!/bin/sh

# ADD FORWARDING RULES
sudo /usr/bin/iptables -P FORWARD DROP
sudo /usr/bin/iptables -I FORWARD -s 192.168.1.0/24 -j ACCEPT -m comment --comment "sprokkel ACCEPT TRAFFIC FROM LAN"
sudo /usr/bin/iptables -I FORWARD -d 192.168.1.0/24 -j ACCEPT -m comment --comment "sprokkel ACCEPT TRAFFIC TO LAN"

# ADD INDIVIDUAL LAN CLIENTS WITH ACCESS TO THE VPN.
sudo /usr/bin/iptables -t nat -I POSTROUTING -s 192.168.1.102 -o nordtun -j MASQUERADE
sudo /usr/bin/iptables -t nat -I POSTROUTING -s 192.168.1.103 -o nordtun -j MASQUERADE
sudo /usr/bin/iptables -t nat -I POSTROUTING -s 192.168.1.104 -o nordtun -j MASQUERADE
sudo /usr/bin/iptables -t nat -I POSTROUTING -s 192.168.1.105 -o nordtun -j MASQUERADE
sudo /usr/bin/iptables -t nat -I POSTROUTING -s 192.168.1.106 -o nordtun -j MASQUERADE
sudo /usr/bin/iptables -t nat -I POSTROUTING -s 192.168.1.112 -o nordtun -j MASQUERADE
sudo /usr/bin/iptables -t nat -I POSTROUTING -s 192.168.1.113 -o nordtun -j MASQUERADE
sudo /usr/bin/iptables -t nat -I POSTROUTING -s 192.168.1.150 -o nordtun -j MASQUERADE


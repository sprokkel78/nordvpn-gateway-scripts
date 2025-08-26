#!/bin/sh

# ADD FORWARDING RULES
sudo iptables-nft -P FORWARD DROP
sudo iptables-nft -I FORWARD -s 192.168.1.0/24 -j ACCEPT -m comment --comment "sprokkel ACCEPT TRAFFIC FROM LAN"
sudo iptables-nft -I FORWARD -d 192.168.1.0/24 -j ACCEPT -m comment --comment "sprokkel ACCEPT TRAFFIC TO LAN"

# ADD INDIVIDUAL LAN CLIENTS WITH ACCESS TO THE VPN.
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.102 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.103 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.104 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.105 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.106 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.112 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.113 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.150 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.151 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.152 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.153 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.154 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.155 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.156 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.157 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.158 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.159 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.160 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.161 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.162 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.163 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.164 -o nordtun -j MASQUERADE
sudo iptables-nft -t nat -I POSTROUTING -s 192.168.1.165 -o nordtun -j MASQUERADE



#!/bin/sh
sudo iptables-nft -t nat -F
sudo iptables-nft -F FORWARD

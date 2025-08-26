#!/bin/sh
sudo iptables -t nat -F
sudo iptables -F FORWARD

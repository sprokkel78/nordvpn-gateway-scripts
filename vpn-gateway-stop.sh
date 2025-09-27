#!/bin/sh
sudo /usr/bin/iptables -t nat -F
sudo /usr/bin/iptables -F FORWARD

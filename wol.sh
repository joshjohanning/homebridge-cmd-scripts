#!/bin/bash
if [ -z "$3" ]; then
    echo "Usage: $0 <mac-address> <ip> <port-number>"
    exit 1
fi

MAC=$1
Broadcast=$2
PortNumber=$3 #9
echo -e $(echo $(printf 'f%.0s' {1..12}; printf "$(echo $MAC | sed 's/://g')%.0s" {1..16}) | sed -e 's/../\\x&/g') | nc -w1 -u -b $Broadcast $PortNumber


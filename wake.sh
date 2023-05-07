#!/bin/bash
if [ -z "$4" ]; then
    echo "Usage: $0 <mac-address> <ip> <port-number> <user>"
    exit 1
fi

MAC=$1
IP=$2
PortNumber=$3 #9
User=$4

file_path=$(readlink -f ${BASH_SOURCE[0]})
dir_path=$(dirname ${file_path})

$dir_path/wol.sh $MAC $IP $PortNumber
sleep 15
$dir_path/dontsleep.sh $User $IP on


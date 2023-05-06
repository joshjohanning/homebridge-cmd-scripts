#!/bin/bash
if [ -z "$3" ]; then
    echo "Usage: $0 <user> <ip> <on|off>"
    exit 1
fi

user=$1
ip=$2
state=$3

if [ "$state" == "on" ]; then
  # solution sourced from https://stackoverflow.com/a/70382385/4270353
  timeout 5 ssh $user@$ip << EOF
"C:\Users\Joshua\Dropbox\Documents\Josh's Folder\bat\dontsleep.bat"
EOF
elif [ "$state" == "off" ]; then
  timeout 5 ssh $user@$ip << EOF
taskkill /IM "DontSleep_x64.exe" /F
EOF
fi


#!/bin/bash
if [ -z "$2" ]; then
    echo "Usage: $0 <user> <ip>"
    exit 1
fi

user=$1
ip=$2

timeout 5 ssh -o "StrictHostKeyChecking accept-new" $user@$ip << EOF
  taskkill /IM "DontSleep_x64.exe" /F
  "C:\Users\Joshua\Dropbox\Documents\Josh's Folder\psshutdown64.exe" -d -t 0 -accepteula
EOF


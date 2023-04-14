#!/bin/bash
if [ -z "$2" ]; then
    echo "Usage: $0 <user> <ip>"
    exit 1
fi

user=$1
ip=$2

# ssh Joshua@192.168.1.50 -- 'taskkill /IM "DontSleep_x64.exe" /F & "C:\Users\Joshua\Dropbox\Documents\psshutdown64.exe" -d -t 0 -accepteula' > /home/pi/scripts/test/log.txt
timeout 5 ssh $user@$ip << EOF
  taskkill /IM "DontSleep_x64.exe" /F
  "C:\Users\Joshua\Dropbox\Documents\Josh's Folder\psshutdown64.exe" -d -t 0 -accepteula
EOF


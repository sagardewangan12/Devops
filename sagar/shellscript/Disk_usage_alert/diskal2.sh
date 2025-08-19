#!/bin/bash

#Send Alert via Email (Linux mail command)
THRESHOLD=80
usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$usage" -gt "$THRESHOLD" ]; then
    echo "Disk usage alert! Current usage: ${usage}%" | mail -s "🚨 Disk Alert" dewangansagar202@gmail.com
fi

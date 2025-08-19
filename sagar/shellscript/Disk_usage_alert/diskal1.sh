#!/bin/bash

# Threshold in percentage
THRESHOLD=80

# Get current disk usage of root filesystem
usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$usage" -gt "$THRESHOLD" ]; then
    echo "🚨 ALERT: Disk usage is at ${usage}% (Threshold: ${THRESHOLD}%)"
else
    echo "✅ Disk usage is OK: ${usage}%"
fi


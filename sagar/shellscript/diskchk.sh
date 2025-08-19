#!/bin/bash

check_disk() {
    usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
    if [ $usage -gt 80 ]; then
        echo "Disk space critical: $usage%"
    else
        echo "Disk space OK: $usage%"
    fi
}

check_disk

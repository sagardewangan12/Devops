#!/bin/bash

# Source and Destination paths
SOURCE="/mnt/c/Users/Lenovo/OneDrive/Desktop/devops/sagar"
DEST="/mnt/c/Users/Lenovo/OneDrive/Desktop/devops/backup"

# Create backup directory if not exists
mkdir -p "$DEST"

# Create filename with timestamp
FILENAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Run backup
tar -czf "$DEST/$FILENAME" "$SOURCE"

# Confirmation message
echo "✅ Backup of $SOURCE created at $DEST/$FILENAME"

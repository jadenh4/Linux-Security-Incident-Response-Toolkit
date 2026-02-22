#!/bin/bash

if [ ! -d "$1" ]; then
    echo "Directory not found"
    exit 1
fi

date=$(date +%Y%m%d)
mkdir -p "$1/backup"

tar -czf "$1/backup/log_backup_$date.tar.gz" "$1"/*.txt

echo "Logs archived successfully."

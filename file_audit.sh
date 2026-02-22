#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./file_audit.sh <directory>"
    exit 1
fi

echo "=== World-Writable File Scan ==="
find "$1" -type f -perm -002 -exec ls -l {} \;

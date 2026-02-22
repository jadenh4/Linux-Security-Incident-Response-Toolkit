#!/bin/bash

echo "=== Running Process Enumeration ==="
ps aux | less

echo ""
read -p "Enter PID to terminate (or press Enter to skip): " pid

if [ ! -z "$pid" ]; then
    kill "$pid"
    echo "Process $pid terminated."
fi

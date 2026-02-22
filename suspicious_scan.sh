#!/bin/bash

echo "=== Suspicious Process Scan ==="
ps aux | grep -E "nc|netcat|nmap|hydra|john" | grep -v grep

echo ""
echo "=== Listening Ports ==="
lsof -i -P -n | grep LISTEN

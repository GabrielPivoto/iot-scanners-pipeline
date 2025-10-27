#!/bin/bash
set -e

TARGET_HOST=${1:-localhost}

echo "Running Nmap scan on $TARGET_HOST..."
nmap -A -oN nmap_report.txt "$TARGET_HOST"
echo "Nmap scan finished. Report saved to nmap_report.txt"

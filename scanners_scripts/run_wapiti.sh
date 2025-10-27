#!/bin/bash
set -e

TARGET_URL=${1:-http://localhost:5173}

echo "Running Wapiti scan on $TARGET_URL..."
wapiti -u "$TARGET_URL" -o wapiti_report --format html
echo "Wapiti scan finished. Report saved in wapiti_report/"

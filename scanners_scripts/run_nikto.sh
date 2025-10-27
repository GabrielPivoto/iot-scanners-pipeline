#!/bin/bash
set -e

TARGET_URL=${1:-http://localhost:5173}

echo "Running Nikto scan on $TARGET_URL..."
nikto -h "$TARGET_URL" -o nikto_report.html -Format html
echo "Nikto scan finished. Report saved to nikto_report.html"

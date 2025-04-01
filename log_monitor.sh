#!/bin/bash
source config.sh

echo "Starting log monitoring..."

grep "CRITICAL" /var/log/syslog > filtered_logs.txt
./alert.sh filtered_logs.txt

echo "Monitoring completed."

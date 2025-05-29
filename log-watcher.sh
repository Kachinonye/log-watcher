#!/bin/bash

log_file="test.log"
keywords=("error" "fail" "unauthorized")

# Create the log file if it doesn't exist
touch "$log_file"

# OPTIONAL: Simulate a suspicious log entry (remove later)
echo "unauthorized access attempt" >> "$log_file"

# Start monitoring
echo "🔍 Monitoring $log_file for suspicious activity..."

tail -Fn0 "$log_file" | while read line; do
  for keyword in "${keywords[@]}"; do
    if echo "$line" | grep -iq "$keyword"; then
      echo "🔴 ALERT: Match found - \"$line\""
    fi
  done
done


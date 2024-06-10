#!/bin/bash

# Check disk usage
disk_usage=$(df -H | egrep -v "tmpfs" | grep "sda2" | awk '{print $5}' | tr -d %)
echo "Disk usage percentage: $disk_usage"

# Email recipient
TO="meghanachowdaryvemulapalli1@gmail.com"

if [[ $disk_usage -ge 80 ]]; then
   echo "Warning: Disk space is low"
   # Send email notification
   echo "Warning: Disk space is low. Current usage: $disk_usage%" | mail -s "Low Disk Space Alert" $TO
   echo "Email notification sent."
else 
   echo "All good" | mail -s "Disk space is good" $TO
   echo "Disk space is good. Email notification sent."
fi

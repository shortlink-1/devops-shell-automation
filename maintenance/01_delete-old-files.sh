#!/bin/bash
: '
Description: A shell script to delete logs older than one month from the /tmp/application directory.
'

path="$1"
# Find and delete files older than 30 days
find "$path" -type f -mtime +30 -delete
# Check if deletion was successful
if [ $? -eq 0 ]; then
    echo "Files older than 30 days are successfully deleted"
else
    echo "Deletion encountered some issues"
fi

#!/bin/bash
TOTALFREESPACE=$(free -mt | grep "Total" | awk '{print $4}')
th=2000

if [[ $TOTALFREESPACE -gt $th ]]; then
    echo "You have free RAM. total remaining space is $(($TOTALFREESPACE-$th))"
else
    echo "You don't have free RAM."
fi

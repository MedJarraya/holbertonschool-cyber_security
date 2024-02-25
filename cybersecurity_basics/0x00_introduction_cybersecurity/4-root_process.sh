#!/bin/bash
if [[ "$#" -ne 1 ]]; then
    echo "Usage: $0 <username>"
    exit 1
fi

user=$1
ps aux | grep "^$user" | awk '$6 > 0 && $7 > 0 {print $0}'

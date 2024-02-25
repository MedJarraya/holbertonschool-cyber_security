#!/bin/bash
[ "$#" -eq 1 ] && ps aux | grep -v "USER" | grep "$1" | awk '$5 > 0 && $6 > 0 {print $0}'

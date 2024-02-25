#!/bin/bash
[ "$#" -eq 1 ] && ps -u "$1" -o pid,vsz,rss,args | awk '$2 > 0 && $3 > 0 {print $0}'

#!/bin/bash
[ "$#" -eq 1 ] && ps -e -o user,pid,vsz,rss,args | awk -v user="$1" '$1 == user && $4 > 0 && $5 > 0 {print $0}'

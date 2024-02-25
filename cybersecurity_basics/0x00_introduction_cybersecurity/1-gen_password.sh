#!/bin/bash
< /dev/urandom tr -dc '[:alnum:]' | head -c $1 | while read -r line; do printf "%s\n" "$line"; done

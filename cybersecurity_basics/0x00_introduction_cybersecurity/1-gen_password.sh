#!/bin/bash
< /dev/urandom tr -dc '[:alnum:]' | head -c $1 | sed 's/.\{1\}/& /g' | tr -d '\n'

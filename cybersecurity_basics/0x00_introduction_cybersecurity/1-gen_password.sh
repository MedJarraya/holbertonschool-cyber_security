#!/bin/bash
< /dev/urandom tr -dc '[:alnum:]' | head -c $1 | fold -w -n $1 | tr -d '\n'

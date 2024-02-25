#!/bin/bash
printf "%s" $(< /dev/urandom tr -dc '[:alnum:]' | head -c $1 | fold -w $1)

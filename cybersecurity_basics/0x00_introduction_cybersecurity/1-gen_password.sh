#!/bin/bash
echo $(< /dev/urandom tr -dc '[:alnum:]' | head -c $1 | fold -w $1)

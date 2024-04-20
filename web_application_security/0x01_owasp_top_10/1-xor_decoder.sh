#!/bin/bash

# This script is a decoder
if [ $# -ne 1 ]; then
    echo "Usage: $0 <encoded_string>"
    exit 1
fi


password="${1#'{xor}'}"
decoded_password=$(echo -n "$password" | base64 -d | tr -d '\0' | tr -dc '\11\12\15\40-\176')


decoded_password_xor=""
for ((i = 0; i < ${#decoded_password}; i++)); do
    char="${decoded_password:$i:1}"
    ascii_value=$(printf "%d" "'$char")
    xor_result=$(( ascii_value ^ 95 ))
    decoded_password_xor+="$(printf "\\x$(printf '%x' $xor_result)")"
done

echo -n "$decoded_password_xor"

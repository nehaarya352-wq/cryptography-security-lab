#!/bin/bash

# AES-256-CBC Symmetric Decryption

if [ $# -ne 1 ]; then
    echo "Usage: ./decrypt.sh <file_to_decrypt>"
    exit 1
fi

input_file="$1"
output_file="${input_file%.enc}_decrypted.txt"

openssl enc -d -aes-256-cbc \
    -in "$input_file" \
    -out "$output_file"

if [ $? -eq 0 ]; then
    echo "[+] File decrypted successfully."
    echo "[+] Decrypted file: $output_file"
else
    echo "[-] Decryption failed."
    exit 1
fi

#!/bin/bash

# AES-256-CBC Symmetric Encryption

if [ $# -ne 1 ]; then
    echo "Usage: ./encrypt.sh <file_to_encrypt>"
    exit 1
fi

input_file="$1"
output_file="${input_file}.enc"

openssl enc -aes-256-cbc -salt \
    -in "$input_file" \
    -out "$output_file"

if [ $? -eq 0 ]; then
    echo "[+] File encrypted successfully."
    echo "[+] Encrypted file: $output_file"
else
    echo "[-] Encryption failed."
    exit 1
fi

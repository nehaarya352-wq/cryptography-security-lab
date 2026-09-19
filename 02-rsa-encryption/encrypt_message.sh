#!/bin/bash

# RSA Encryption using Public Key

if [ $# -ne 2 ]; then
    echo "Usage: ./encrypt_message.sh <message_file> <public_key_file>"
    exit 1
fi

message_file="$1"
public_key="$2"
output_file="${message_file}.enc"

openssl rsautl \
    -encrypt \
    -inkey "$public_key" \
    -pubin \
    -in "$message_file" \
    -out "$output_file"

if [ $? -eq 0 ]; then
    echo "[+] Message encrypted successfully."
    echo "[+] Encrypted file: $output_file"
else
    echo "[-] Encryption failed."
    exit 1
fi

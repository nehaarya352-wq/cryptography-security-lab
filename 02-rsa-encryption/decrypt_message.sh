#!/bin/bash

# RSA Decryption using Private Key

if [ $# -ne 2 ]; then
    echo "Usage: ./decrypt_message.sh <encrypted_file> <private_key_file>"
    exit 1
fi

encrypted_file="$1"
private_key="$2"
output_file="${encrypted_file%.enc}_decrypted.txt"

openssl rsautl \
    -decrypt \
    -inkey "$private_key" \
    -in "$encrypted_file" \
    -out "$output_file"

if [ $? -eq 0 ]; then
    echo "[+] Message decrypted successfully."
    echo "[+] Decrypted file: $output_file"
else
    echo "[-] Decryption failed."
    exit 1
fi

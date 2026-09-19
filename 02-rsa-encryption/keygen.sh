#!/bin/bash

# RSA 2048-bit Key Pair Generation

echo "[+] Generating RSA 2048-bit private key..."

openssl genpkey \
    -algorithm RSA \
    -out private_key.pem \
    -pkeyopt rsa_keygen_bits:2048

if [ $? -ne 0 ]; then
    echo "[-] Private key generation failed."
    exit 1
fi

echo "[+] Extracting public key..."

openssl rsa \
    -pubout \
    -in private_key.pem \
    -out public_key.pem

if [ $? -ne 0 ]; then
    echo "[-] Public key generation failed."
    exit 1
fi

echo "[+] RSA key pair generated successfully."
echo "[+] Private key: private_key.pem"
echo "[+] Public key : public_key.pem"

#!/bin/bash

echo "=========================================="
echo "        PKI PRACTICAL USING OPENSSL"
echo "=========================================="

echo ""
echo "[+] Step 1: Generating RSA 2048-bit Private Key..."

openssl genpkey \
    -algorithm RSA \
    -out private_key.pem \
    -pkeyopt rsa_keygen_bits:2048

if [ $? -eq 0 ]; then
    echo "[+] Private key generated successfully."
else
    echo "[-] Error generating private key."
    exit 1
fi

echo ""
echo "[+] Step 2: Creating Certificate Signing Request..."

openssl req \
    -new \
    -key private_key.pem \
    -out request.csr \
    -subj "/C=IN/ST=Punjab/L=Phagwara/O=iStudio/OU=Cybersecurity/CN=localhost/emailAddress=student@example.com"

if [ $? -eq 0 ]; then
    echo "[+] CSR generated successfully."
else
    echo "[-] Error generating CSR."
    exit 1
fi

echo ""
echo "[+] Step 3: Creating Self-Signed X.509 Certificate..."

openssl x509 \
    -req \
    -days 365 \
    -in request.csr \
    -signkey private_key.pem \
    -out certificate.pem

if [ $? -eq 0 ]; then
    echo "[+] Self-signed certificate created successfully."
else
    echo "[-] Error creating certificate."
    exit 1
fi

echo ""
echo "=========================================="
echo " Certificate Information"
echo "=========================================="

openssl x509 \
    -in certificate.pem \
    -text \
    -noout

echo ""
echo "=========================================="
echo "           PKI PRACTICAL COMPLETED"
echo "=========================================="

echo ""
echo "Generated files:"
echo "1. private_key.pem  -> Private Key"
echo "2. request.csr      -> Certificate Signing Request"
echo "3. certificate.pem  -> X.509 Certificate"

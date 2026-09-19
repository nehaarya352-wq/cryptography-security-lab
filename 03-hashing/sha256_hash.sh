#!/bin/bash

# SHA-256 File Integrity Demonstration

echo "=========================================="
echo "       SHA-256 HASHING & INTEGRITY"
echo "=========================================="

echo ""
echo "[+] Creating original file..."

echo "This is my original cybersecurity lab file." > hash.txt

echo "[+] Original file created: hash.txt"

echo ""
echo "[+] Calculating original SHA-256 hash..."

original_hash=$(openssl dgst -sha256 hash.txt)

echo "$original_hash"
echo "$original_hash" > original_hash.txt

echo ""
echo "[+] Modifying the file..."

echo "This line was added after the original hash." >> hash.txt

echo "[+] File modified."

echo ""
echo "[+] Calculating new SHA-256 hash..."

new_hash=$(openssl dgst -sha256 hash.txt)

echo "$new_hash"
echo "$new_hash" > new_hash.txt

echo ""
echo "=========================================="
echo "           HASH COMPARISON"
echo "=========================================="

echo "Original Hash:"
cat original_hash.txt

echo ""
echo "New Hash:"
cat new_hash.txt

echo ""
echo "[+] Hash comparison completed."
echo "[+] A file modification produces a different hash."

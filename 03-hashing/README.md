# 🔐 SHA-256 Hashing & File Integrity

## 📌 Objective

This lab demonstrates the use of SHA-256 cryptographic hashing to detect changes made to a file.

## 🛠️ Technologies

- Kali Linux
- OpenSSL
- Bash
- SHA-256

## 🔬 Workflow

```text
Original File
      │
      ▼
SHA-256 Hash
      │
      ▼
Original Hash Stored
      │
      ▼
File Modified
      │
      ▼
SHA-256 Hash Calculated Again
      │
      ▼
Compare Hashes
      │
      ▼
Different Hash = File Changed
⚙️ Implementation

The script creates a test file and calculates its original SHA-256 digest.

./sha256_hash.sh


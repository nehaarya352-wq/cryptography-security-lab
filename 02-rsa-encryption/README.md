# 🔑 RSA Encryption & Decryption

## 📌 Objective

This lab demonstrates public-key cryptography using RSA in Kali Linux. An RSA key pair is generated and used to encrypt and decrypt a test message.

## 🛠️ Technologies

- Kali Linux
- OpenSSL
- Bash
- RSA 2048-bit

## 🔬 Workflow

```text
                 RSA Key Pair
                      │
             ┌────────┴────────┐
             ▼                 ▼
        Public Key        Private Key
             │                 │
             ▼                 │
        Encryption             │
             │                 │
             ▼                 │
       Encrypted File          │
                               │
                               ▼
                           Decryption
                               │
                               ▼

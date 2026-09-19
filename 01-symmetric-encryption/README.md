# 🔐 Symmetric Encryption using AES-256-CBC

## 📌 Objective

This lab demonstrates symmetric encryption and decryption using the AES-256-CBC algorithm with OpenSSL in Kali Linux.

## 🛠️ Technologies

- Kali Linux
- OpenSSL
- Bash
- AES-256-CBC

## 🔬 Workflow

Plaintext File
      │
      ▼
AES-256-CBC Encryption
      │
      ▼
Encrypted File (.enc)
      │
      ▼
AES-256-CBC Decryption
      │
      ▼
Recovered Plaintext

⚙️ Implementation
Encryption
./encrypt.sh secret.txt

The script encrypts the input file using AES-256-CBC and generates:

secret.txt.enc
Decryption
./decrypt.sh secret.txt.enc

The encrypted file is decrypted using the same password and produces:

secret.txt_decrypted.txt
🧪 Test Result

Original file:

This is my confidential cybersecurity lab file.

After encryption:

secret.txt.enc

After decryption:

This is my confidential cybersecurity lab file.

The recovered plaintext matches the original file.

🔐 Security Concept

AES is a symmetric encryption algorithm, meaning the same secret key is used for both encryption and decryption.

The lab demonstrates the confidentiality aspect of cryptography by converting readable plaintext into ciphertext and recovering it using the correct secret.

📸 Evidence

Screenshots showing the encryption, decryption, and recovered plaintext are stored in the screenshots directory.

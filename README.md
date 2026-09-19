# 🔐 Cryptography & Password Security Lab

A hands-on cybersecurity laboratory developed in **Kali Linux** covering practical cryptography, password security, cryptanalysis, PKI, digital signatures, and side-channel security.

This project contains **11 practical security experiments** implemented using **OpenSSL, GPG, Hashcat, John the Ripper, Bash, and Python**.

The purpose of this project is to demonstrate practical understanding of cryptographic algorithms, security mechanisms, password security, cryptanalysis techniques, and common implementation-level vulnerabilities in a controlled laboratory environment.

---

## 🎯 Project Objectives

The main objectives of this project are to:

- Understand practical cryptographic concepts
- Implement symmetric encryption and decryption
- Implement asymmetric encryption using RSA
- Generate and manage cryptographic keys
- Calculate and compare cryptographic hashes
- Create and verify digital signatures
- Understand Public Key Infrastructure (PKI)
- Generate and inspect X.509 certificates
- Perform classical cryptanalysis
- Perform controlled password auditing
- Understand Linux password hash security
- Demonstrate differential cryptanalysis concepts
- Demonstrate timing side-channel vulnerabilities
- Develop Bash and Python security scripts
- Document security experiments professionally

---

# 🧪 Practical Modules

| No. | Practical | Main Technology |
|-----|-----------|-----------------|
| 01 | Symmetric Encryption | OpenSSL / AES-256-CBC |
| 02 | RSA Asymmetric Encryption | OpenSSL / RSA |
| 03 | Cryptographic Hashing | SHA-256 / OpenSSL |
| 04 | Digital Signatures | GPG |
| 05 | Public Key Infrastructure | OpenSSL / X.509 |
| 06 | Classical Cryptanalysis | Python / Caesar Cipher |
| 07 | Password Hash Auditing | Hashcat |
| 08 | ZIP Password Auditing | John the Ripper |
| 09 | Linux Password Hash Auditing | John the Ripper |
| 10 | Differential Cryptanalysis | Python / Ciphertext Analysis |
| 11 | Timing Side-Channel Attack | Python / Timing Analysis |

---

# 📁 Project Structure

```text
cryptography-security-lab/
│
├── 01-symmetric-encryption/
│   ├── encrypt.sh
│   ├── decrypt.sh
│   └── screenshots/
│
├── 02-rsa-encryption/
│   ├── keygen.sh
│   ├── encrypt_message.sh
│   ├── decrypt_message.sh
│   └── screenshots/
│
├── 03-hashing/
│   ├── hash.sh
│   └── screenshots/
│
├── 04-digital-signatures/
│   ├── document.txt
│   ├── signature files
│   └── screenshots/
│
├── 05-pki/
│   ├── pki.sh
│   └── screenshots/
│
├── 06-classical-cryptanalysis/
│   ├── brute.py
│   ├── frequency.py
│   └── screenshots/
│
├── 07-password-security/
│   ├── hash.txt
│   └── screenshots/
│
├── 08-zip-password-auditing/
│   ├── lab archive
│   ├── password hash
│   └── screenshots/
│
├── 09-linux-password-hash-auditing/
│   ├── lab hash
│   └── screenshots/
│
├── 10-differential-cryptanalysis/
│   ├── analysis script
│   └── screenshots/
│
├── 11-timing-attack/
│   ├── timing_attack.py
│   └── screenshots/
│
├── docs/
│
├── .gitignore
└── README.md
🔐 01. Symmetric Encryption
Objective

Demonstrate file encryption and decryption using the AES-256-CBC symmetric encryption algorithm.

Technology
OpenSSL
AES-256-CBC
Bash
Concepts
Symmetric cryptography
Confidentiality
Encryption
Decryption
Password-based encryption
Workflow
Plaintext File
      │
      ▼
AES-256-CBC Encryption
      │
      ▼
Encrypted File
      │
      ▼
AES-256-CBC Decryption
      │
      ▼
Recovered Plaintext
Security Property

Confidentiality

The same secret/password-derived encryption key is used for encryption and decryption.

🔑 02. RSA Asymmetric Encryption
Objective

Demonstrate public-key cryptography using RSA.

Technology
OpenSSL
RSA
Bash
Operations
Generate RSA private key
Generate corresponding public key
Encrypt a message using the public key
Decrypt the message using the private key
Workflow
                 RSA KEY PAIR
                     │
          ┌──────────┴──────────┐
          ▼                     ▼
     Public Key            Private Key
          │                     │
          ▼                     │
      Encryption                │
          │                     │
          ▼                     │
    Ciphertext                  │
                                ▼
                           Decryption
Concepts
Asymmetric cryptography
Public key
Private key
RSA
Key management
Security Property

Confidentiality through public-key encryption

Private keys must never be exposed or committed to a public repository.

#️⃣ 03. Cryptographic Hashing
Objective

Demonstrate SHA-256 hashing and file integrity verification.

Technology
OpenSSL
SHA-256
Bash
Experiment
Create a test file
Generate SHA-256 hash
Modify the file
Generate the hash again
Compare both hashes
Workflow
Original File
     │
     ▼
 SHA-256
     │
     ▼
Original Hash
     │
     ▼
Modify File
     │
     ▼
 SHA-256
     │
     ▼
New Hash
     │
     ▼
Compare Hashes
Concepts
Cryptographic hashing
SHA-256
Integrity
Avalanche effect
Hash comparison
Important

Hashing is not encryption.

A cryptographic hash is designed to be a one-way transformation.

🔏 04. Digital Signatures
Objective

Create and verify digital signatures using GPG.

Technology
GnuPG
RSA/OpenPGP keys
Operations
Generate or use a GPG key pair
Create a detached digital signature
Verify the signature
Modify the signed document
Demonstrate failed verification
Restore the original document
Verify the signature again
Workflow
Original Document
       │
       ▼
     Hash
       │
       ▼
Private Key
       │
       ▼
Digital Signature
       │
       ▼
Signature File
       │
       ▼
Verification
Tamper Detection
Original Document
       +
Valid Signature
       │
       ▼
   Verification
       │
       ▼
     VALID


Modified Document
       +
Original Signature
       │
       ▼
   Verification
       │
       ▼
    INVALID
Concepts
Digital signatures
Authentication
Integrity
Public/private keys
GPG
OpenPGP
🌐 05. Public Key Infrastructure (PKI)
Objective

Demonstrate a basic PKI workflow using OpenSSL.

Technology
OpenSSL
RSA
X.509
Operations
Generate private key
Create Certificate Signing Request (CSR)
Generate a certificate
Inspect certificate information
Workflow
Private Key
     │
     ▼
Certificate Signing Request
(CSR)
     │
     ▼
X.509 Certificate
     │
     ▼
Certificate Inspection
Concepts
Public Key Infrastructure
Certificate Signing Request
X.509 certificates
Certificate identity
Public/private keys
Certificate validation
Note

The laboratory uses a self-signed certificate for demonstration.

In real-world PKI deployments, certificates are generally issued through trusted Certificate Authorities.

🔍 06. Classical Cryptanalysis
Objective

Demonstrate basic cryptanalysis techniques using a Caesar cipher.

Technology
Python 3
Techniques
Caesar cipher
Brute-force analysis
Frequency analysis
Ciphertext analysis
Brute-Force Workflow
Ciphertext
    │
    ▼
Try Shift 1
    │
    ▼
Try Shift 2
    │
    ▼
Try Shift 3
    │
    ▼
...
    │
    ▼
Try Shift 25
    │
    ▼
Identify Meaningful Plaintext
Frequency Analysis

The script counts the frequency of letters in the ciphertext and uses the resulting distribution as a cryptanalysis aid.

Concepts
Classical cryptography
Substitution ciphers
Brute-force attacks
Frequency analysis
Cryptanalysis
🔓 07. Password Hash Auditing with Hashcat
Objective

Demonstrate controlled password hash recovery using Hashcat against a self-generated laboratory hash.

Technology
Hashcat
Kali Linux
MD5
Mask attack
Example Workflow
Test Password
      │
      ▼
Generate Hash
      │
      ▼
Store Hash
      │
      ▼
Hashcat Mask Attack
      │
      ▼
Candidate Testing
      │
      ▼
Recovered Password
Concepts
Password hashing
Hash identification
Mask attacks
Password auditing
Hashcat
Example Attack Mode
-a 3

Mask attack.

Example Hash Mode
-m 0

MD5.

Ethical Scope

The practical uses a self-created test hash and is intended for password security education and controlled auditing.

📦 08. ZIP Password Auditing
Objective

Demonstrate password auditing against a self-created password-protected ZIP archive.

Technology
John the Ripper
ZIP archive
Kali Linux
Workflow
Create Test File
      │
      ▼
Create Password-Protected ZIP
      │
      ▼
Extract ZIP Hash
      │
      ▼
John the Ripper
      │
      ▼
Controlled Password Recovery
Concepts
Archive password protection
Password auditing
Wordlists
John the Ripper
Password recovery
Security Context

The archive used in this practical is created specifically for the laboratory.

No third-party or unauthorized files are targeted.

🐧 09. Linux Password Hash Auditing
Objective

Demonstrate password hash auditing using a controlled Linux test account/hash.

Technology
Linux
/etc/shadow
John the Ripper
Workflow
Linux Test Account
       │
       ▼
Password Hash
       │
       ▼
Controlled Hash File
       │
       ▼
John the Ripper
       │
       ▼
Password Audit
Concepts
Linux password hashes
/etc/shadow
Password storage
Hash auditing
John the Ripper
Wordlist attacks
Security Note

The practical must use only a test account or authorized laboratory hash.

Real users' password hashes must never be copied, disclosed, or attacked without explicit authorization.

🔬 10. Differential Cryptanalysis
Objective

Demonstrate the basic principles of differential cryptanalysis by analyzing how controlled changes in plaintext can influence ciphertext.

Technology
Python
OpenSSL
AES-256-CBC
Hexadecimal analysis
Laboratory Process
Plaintext 1
     │
     ▼
Encryption
     │
     ▼
Ciphertext 1
     │
     │
     │ Compare
     │
     ▼
Ciphertext 2
     ▲
     │
Encryption
     ▲
     │
Plaintext 2

The experiment creates related test messages, encrypts them, converts the resulting ciphertexts to hexadecimal representation, and compares the outputs.

Analysis

The practical demonstrates that small changes in input can produce substantially different ciphertext.

This illustrates the importance of diffusion and the avalanche effect in modern cryptographic designs.

Concepts
Differential cryptanalysis
Related plaintexts
Ciphertext comparison
Avalanche effect
Diffusion
Cryptographic analysis
Important Note

This educational experiment demonstrates the concept and analysis process. It is not intended to recover AES keys from a properly implemented AES system.

⏱️ 11. Timing Side-Channel Attack
Objective

Demonstrate how execution-time differences can potentially leak information about a secret.

Technology
Python 3
Timing measurements
Concept

A side-channel attack does not necessarily attack the mathematical algorithm directly.

Instead, it analyzes information unintentionally leaked by the implementation, such as:

Execution time
Power consumption
Electromagnetic emissions
Memory behavior

This practical focuses on timing leakage.

Laboratory Workflow
Secret Value
     │
     ▼
Vulnerable Comparison
     │
     ▼
Measure Execution Time
     │
     ▼
Compare Timing Results
     │
     ▼
Infer Information
Demonstration

The laboratory script uses a deliberately vulnerable comparison process.

Different guesses can result in different processing times.

Repeated measurements can then be analyzed to demonstrate how timing information may reveal information about the secret.

Concepts
Side-channel attacks
Timing attacks
Execution-time measurement
Information leakage
Secure comparison
Constant-time programming
Defensive Concept

Security-sensitive comparisons should use appropriate constant-time comparison techniques where applicable.

🧠 Security Concepts Covered

This project demonstrates multiple areas of cybersecurity:

                    CRYPTOGRAPHY
                         │
        ┌────────────────┼────────────────┐
        │                │                │
        ▼                ▼                ▼
  Encryption          Integrity       Authentication
        │                │                │
     AES / RSA       SHA-256 / GPG    Digital Signatures
        │
        ▼
    Key Management
        │
      PKI / X.509

        ┌─────────────────────────────┐
        │      SECURITY TESTING       │
        └─────────────────────────────┘
                     │
        ┌────────────┼────────────┐
        ▼            ▼            ▼
   Hashcat         John       Cryptanalysis
        │            │            │
   Hash Auditing  Password     Caesar /
                  Auditing     Differential
                                  │
                                  ▼
                          Side-Channel Analysis
                                  │
                            Timing Attack
🛠️ Technologies & Tools
Operating System
Kali Linux
Cryptography
OpenSSL
GnuPG / GPG
AES
RSA
SHA-256
X.509
Password Security
Hashcat
John the Ripper
Programming
Python 3
Bash
Version Control
Git
GitHub
📊 Security Properties Demonstrated
Security Property	Practical
Confidentiality	AES, RSA
Integrity	SHA-256
Authentication	Digital Signatures
Key Management	RSA, GPG, PKI
Certificate Security	X.509 / PKI
Password Security	Hashcat, John the Ripper
Cryptanalysis	Caesar, Differential Analysis
Implementation Security	Timing Attack
Tamper Detection	Hashing, Digital Signatures
Information Leakage	Timing Side Channel
📸 Evidence & Documentation

Each practical contains a dedicated screenshots/ directory.

Screenshots document:

Laboratory setup
Commands executed
Input files
Cryptographic operations
Tool output
Verification
Attack/analysis results

The repository is intended to provide reproducible evidence of the practical work rather than only theoretical descriptions.

🔐 Key Security Practices

Sensitive cryptographic material must not be committed to GitHub.

The repository should never contain:

Private RSA keys
GPG private keys
Real passwords
Real /etc/shadow files
Unauthorized password hashes
Personal credentials
API keys
Tokens
Confidential files

Use .gitignore to exclude sensitive and generated artifacts.

⚠️ Ethical Use

All experiments in this repository are performed in controlled laboratory environments using self-created test data, test credentials, test hashes, and intentionally vulnerable demonstrations.

Password auditing, cryptanalysis, and security testing techniques should only be performed against systems, files, accounts, and data for which explicit authorization has been obtained.

The techniques demonstrated here are intended for:

Cybersecurity education
Authorized security testing
Laboratory research
Defensive security training
Understanding cryptographic weaknesses and implementation risks
🎓 Learning Outcomes

After completing this laboratory, the following practical areas have been explored:

Symmetric cryptography
AES-256-CBC
Asymmetric cryptography
RSA
Public/private key management
SHA-256
Cryptographic integrity
Digital signatures
GPG
Public Key Infrastructure
X.509 certificates
Certificate Signing Requests
Caesar cipher
Brute-force cryptanalysis
Frequency analysis
Password hash auditing
Hashcat
John the Ripper
ZIP password auditing
Linux password hash auditing
Differential cryptanalysis concepts
Avalanche effect
Side-channel attacks
Timing attacks
Secure comparison concepts
Bash scripting
Python scripting
Linux security tools
📚 Project Type

Cybersecurity / Cryptography / Ethical Hacking Laboratory

Environment
Operating System : Kali Linux
Environment      : Virtual Machine
Languages        : Python, Bash
Tools            : OpenSSL, GPG, Hashcat, John the Ripper
Platform         : GitHub
👩‍💻 Project Context

This project was developed as part of hands-on cybersecurity and ethical hacking training.

The laboratory focuses on converting cryptography concepts into practical security experiments using industry-relevant Linux security tools.

Each practical is documented with commands, scripts, screenshots, observations, and security concepts to demonstrate practical understanding.

⭐ Author

Neha

B.Sc. Information Technology
Cybersecurity / Ethical Hacking

GitHub: github.com/nehaarya352-wq

📌 Disclaimer

This repository is intended strictly for educational and authorized security testing purposes.

The author does not support unauthorized access, password theft, credential compromise, or attacks against systems without permission.

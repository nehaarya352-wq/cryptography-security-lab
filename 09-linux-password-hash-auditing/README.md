# Practical 9: Linux Password Hash Auditing Using John the Ripper

## Objective

To understand how Linux stores password hashes and how John the Ripper can be used to audit a password hash in a controlled laboratory environment.

## Tools Used

- Kali Linux
- John the Ripper
- OpenSSL
- Linux `/etc/shadow`
- Bash Terminal

## Practical Overview

Linux does not normally store user passwords as plain text. Instead, password information is stored as cryptographic password hashes in the `/etc/shadow` file.

In this practical, a separate laboratory user account named `crypto_lab` was created. A SHA-512 crypt password hash was used for the controlled laboratory account because the installed version of John the Ripper supports the `sha512crypt` format.

The hash was then extracted and audited using John the Ripper.

## Practical Steps

### 1. Create a Laboratory User

A separate test user was created:

```bash
sudo useradd -m crypto_lab

The account was verified using:

id crypto_lab
2. Generate a SHA-512 Crypt Password Hash

A SHA-512 crypt hash was generated using OpenSSL:

openssl passwd -6 lab123

The generated hash begins with:

$6$

The $6$ prefix identifies the SHA-512 crypt format.

3. Assign the Hash to the Laboratory User

The generated hash was assigned to the crypto_lab account:

sudo usermod -p 'HASH_HERE' crypto_lab

The password hash format was then verified in /etc/shadow.

4. Examine the /etc/shadow Entry

The laboratory user's entry was viewed using:

sudo grep '^crypto_lab:' /etc/shadow

The /etc/shadow file contains sensitive authentication information and therefore was not included in the GitHub repository.

5. Extract the Laboratory Hash

The test user's complete shadow entry was copied into a separate laboratory file:

sudo grep '^crypto_lab:' /etc/shadow > shadow_lab.txt
6. Audit the Hash Using John the Ripper

John the Ripper was used with the SHA-512 crypt format:

john --format=sha512crypt shadow_lab.txt

John tested candidate passwords against the stored password hash.

7. Display the Recovered Password

The result was displayed using:

john --show shadow_lab.txt

The deliberately weak laboratory password was successfully recovered.

How It Works
Linux Laboratory User
        |
        v
   /etc/shadow
        |
        v
 Password Hash
        |
        v
   John the Ripper
        |
        v
 Password Auditing
        |
        v
Recovered Lab Password
Understanding /etc/shadow

A simplified Linux shadow entry has the following structure:

username:password_hash:last_change:min:max:warning:inactive:expire

The password field contains a cryptographic password hash rather than the original plain-text password.

For this practical, the hash used the SHA-512 crypt format:

$6$salt$hash
Key Concepts Learned
Password Hashing

Password hashing converts a password into a one-way representation used for authentication.

/etc/shadow

The /etc/shadow file stores password hashes and other password-related account information on Linux systems.

SHA-512 Crypt

SHA-512 crypt is a password hashing format identified by the $6$ prefix.

Password Auditing

John the Ripper can test candidate passwords against password hashes to identify weak passwords.

Weak Passwords

Simple passwords are more vulnerable to offline password auditing because they are easier to guess.

Evidence

Screenshots included in this practical demonstrate:

Creation of the laboratory Linux user
Password hash stored in /etc/shadow
John the Ripper password auditing process
Successfully recovered laboratory password
Security and Ethical Considerations

This practical was performed only on a self-created laboratory account in a controlled Kali Linux environment.

Password auditing should only be performed on systems, accounts, or password hashes for which explicit authorization has been provided.

The actual /etc/shadow file and laboratory hash file were not included in the GitHub repository.

Learning Outcomes

After completing this practical, I understood:

How Linux stores password hashes
The purpose of /etc/shadow
How SHA-512 crypt hashes are identified
How to create a controlled password hash for testing
How John the Ripper performs password auditing
Why weak passwords are vulnerable to offline attacks
The importance of strong password selection
Author

Neha
B.Sc. Information Technology
Cybersecurity / Ethical Hacking

GitHub: https://github.com/nehaarya352-wq

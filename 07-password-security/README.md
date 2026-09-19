# Practical 7: Password Hash Auditing using Hashcat

## Objective

To understand password hash auditing using Hashcat by recovering a known test password from its MD5 hash using a controlled brute-force mask attack.

## Tools Used

- Kali Linux
- Hashcat 7.1.2
- OpenCL / PoCL
- MD5
- Bash

## Practical Overview

Password hashing converts a password into a fixed-length hash value. Hash functions such as MD5 are designed as one-way functions, meaning the original password cannot normally be obtained by simply reversing the hash.

Password auditing tools such as Hashcat can test possible passwords and compare their hashes with a target hash.

In this controlled lab, a known test password was used:

```text
test

Its MD5 hash is:

098f6bcd4621d373cade4e832627b4f6
Hashcat Attack

The following command was used:

hashcat -a 3 -m 0 hash.txt '?l?l?l?l'
Command Explanation
-a 3 → Mask attack
-m 0 → MD5 hash mode
hash.txt → File containing the target hash
?l → Lowercase letters from a-z
?l?l?l?l → Four lowercase characters

The attack searches through possible four-character lowercase passwords.

Password Recovery

Hashcat recovered the known test password:

098f6bcd4621d373cade4e832627b4f6:test

The recovered password was:

test
Verification

The password was independently verified using:

echo -n "test" | md5sum

Result:

098f6bcd4621d373cade4e832627b4f6

This matches the target hash.

Evidence

Screenshots included in this practical:

MD5 hash generation
Hashcat password recovery
Hash verification
Security Concepts Demonstrated
Password hashing
MD5
Hashcat
Mask attacks
Password auditing
Hash verification
Weak password security
Security Note

MD5 is considered cryptographically weak and should not be used for storing passwords in modern applications.

Modern password storage should use dedicated password hashing algorithms such as Argon2id, bcrypt, scrypt, or PBKDF2 with appropriate parameters.

Ethical Use

This practical was performed only on a self-created laboratory hash in a controlled Kali Linux environment.

Password auditing tools should only be used on systems, accounts, and credentials for which explicit authorization has been provided.

Learning Outcome

This practical demonstrated how password hashes can be audited using Hashcat and why short or predictable passwords are vulnerable to password-guessing attacks.

Author

Neha
B.Sc. Information Technology
Cybersecurity / Ethical Hacking

# Practical 8: ZIP Password Auditing Using John the Ripper

## Objective

To understand how password-protected ZIP files can be audited for weak passwords using John the Ripper in a controlled cybersecurity laboratory environment.

## Tools Used

- Kali Linux
- John the Ripper
- zip
- zip2john
- unzip
- Bash Terminal

## Practical Overview

In this practical, a ZIP file was created with a deliberately simple password for laboratory testing. The ZIP file was then converted into a format that John the Ripper could process.

John the Ripper was used with a wordlist to perform a password audit and identify the weak laboratory password.

## Practical Steps

### 1. Create a Test File

A sample file was created for the controlled laboratory environment.

```bash
echo "This is a controlled cybersecurity laboratory file." > secret.txt

The file contents were verified using:

cat secret.txt
2. Create a Password-Protected ZIP

The file was compressed into a password-protected ZIP archive:

zip -e protected.zip secret.txt

A simple laboratory password was used for demonstration purposes.

3. Test the ZIP File

The password-protected archive was tested using:

unzip protected.zip

The correct laboratory password successfully extracted the file.

4. Extract the ZIP Hash

zip2john was used to convert the ZIP password information into a format that John the Ripper can process:

zip2john protected.zip > zip_hash.txt

The generated hash was checked using:

cat zip_hash.txt
5. Perform Password Auditing

John the Ripper was used with a wordlist to audit the ZIP password:

john --wordlist=/usr/share/wordlists/rockyou.txt zip_hash.txt

If a custom laboratory wordlist was used:

john --wordlist=lab_wordlist.txt zip_hash.txt
6. Display the Recovered Password

The recovered password was displayed using:

john --show zip_hash.txt
7. Verify the Password

The recovered password was verified by extracting the protected ZIP:

unzip -o protected.zip

The extracted file was then checked:

cat secret.txt
How It Works

The overall process can be represented as:

Password-Protected ZIP
        │
        ▼
    zip2john
        │
        ▼
   ZIP Hash File
        │
        ▼
 John the Ripper
        │
        ▼
 Password Audit
        │
        ▼
Recovered Password
        │
        ▼
ZIP Extraction
Key Concepts Learned
ZIP Password Protection

ZIP archives can be protected with passwords to prevent unauthorized extraction of their contents.

Hash Extraction

zip2john extracts password-related information from a ZIP archive and converts it into a format that John the Ripper can process.

Password Auditing

John the Ripper can test candidate passwords against password hashes using different attack techniques, including wordlist-based attacks.

Weak Passwords

Simple and commonly used passwords can be vulnerable to password auditing attacks.

Evidence

Screenshots included in this practical demonstrate:

Creation of the password-protected ZIP
Extraction of the ZIP hash
John the Ripper password auditing process
Recovered password and verification
Ethical Considerations

This practical was performed only on a self-created ZIP file in a controlled cybersecurity laboratory environment.

Password auditing should only be performed on files and systems for which explicit authorization has been provided.

Learning Outcome

After completing this practical, I understood:

How to create a password-protected ZIP archive
How zip2john extracts ZIP password information
How John the Ripper performs password auditing
How weak passwords can be identified
How to verify a recovered password
The importance of using strong passwords

Author

Neha
B.Sc. Information Technology
Cybersecurity / Ethical Hacking

GitHub: https://github.com/nehaarya352-wq

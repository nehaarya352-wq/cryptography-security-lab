# Practical 4: Digital Signatures using GPG

## Objective

To understand and implement digital signatures using GNU Privacy Guard (GPG) and verify the authenticity and integrity of a document.

## Tools Used

- Kali Linux
- GnuPG (GPG) 2.4.9
- RSA 3072-bit key pair
- Bash Terminal

## Practical Description

A digital signature is used to verify:

1. The authenticity of the signer.
2. The integrity of the signed data.

In this practical, a document was digitally signed using a private RSA key. The corresponding signature was then verified using GPG.

The document was also intentionally modified after signing to demonstrate that tampering causes signature verification to fail.

## Steps Performed

### 1. Check GPG Configuration

GPG was verified using:

```bash
gpg --version

An existing RSA 3072-bit GPG key was used for the practical.

2. Create the Document
echo "This is an important document for digital signature verification." > document.txt
3. Create a Detached Signature
gpg --armor --detach-sign document.txt

This generated:

document.txt.asc

The .asc file contains the ASCII-armored digital signature.

4. Verify the Original Document
gpg --verify document.txt.asc document.txt

GPG reported:

Good signature

This confirmed that the document matched the content that was originally signed.

5. Test Tampering

The document was modified after the signature had been created:

echo "This document has been modified." >> document.txt

The signature was verified again:

gpg --verify document.txt.asc document.txt

GPG reported:

BAD signature

This demonstrated that modifying the signed document causes signature verification to fail.

6. Restore and Verify

The original document content was restored and the signature was verified again.

GPG returned:

Good signature
Concepts Demonstrated
Digital Signature

A digital signature provides a way to verify the authenticity and integrity of data.

Private Key

The private key is used to create the digital signature and must be kept secret.

Public Key

The corresponding public key is used to verify the signature.

Integrity Verification

If the signed document is changed after signing, signature verification fails.

Detached Signature

A detached signature is stored separately from the original document.

In this practical:

document.txt
document.txt.asc
Evidence

Screenshots are included in the screenshots/ directory:

Signature verification of the original document
Failed verification after document modification
Successful verification after restoring the original document
Security Considerations

The GPG private key was not stored inside this project and should never be committed to a public repository.

Only controlled lab data was used.

Learning Outcome

This practical demonstrated how digital signatures can be used to verify document integrity and signer authenticity. It also demonstrated how signature verification detects unauthorized modification of signed data.

Ethical Use

Digital signature techniques should be used only for authorized security testing, educational exercises, and legitimate cryptographic applications.

Author

Neha
B.Sc. Information Technology
Cybersecurity / Ethical Hacking

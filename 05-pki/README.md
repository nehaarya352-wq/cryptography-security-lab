# Practical 5: Public Key Infrastructure (PKI) using OpenSSL

## Objective

To understand the basic components of Public Key Infrastructure (PKI) and create a self-signed X.509 digital certificate using OpenSSL.

## Tools Used

- Kali Linux
- OpenSSL
- RSA 2048-bit key
- X.509 certificate

## Practical Description

Public Key Infrastructure (PKI) is a system used to manage public keys and digital certificates.

In this practical, an RSA private key was generated first. A Certificate Signing Request (CSR) was then created using the private key. Finally, a self-signed X.509 certificate was generated and its information and validity were verified.

## Steps Performed

### 1. Generate RSA Private Key

```bash
openssl genpkey \
    -algorithm RSA \
    -out private_key.pem \
    -pkeyopt rsa_keygen_bits:2048

The private key was generated using a 2048-bit RSA key.

2. Create Certificate Signing Request
openssl req \
    -new \
    -key private_key.pem \
    -out request.csr

The CSR contains information about the entity requesting a certificate and its public key.

3. Create Self-Signed X.509 Certificate
openssl x509 \
    -req \
    -days 365 \
    -in request.csr \
    -signkey private_key.pem \
    -out certificate.pem

A self-signed X.509 certificate was generated using the private key.

4. Display Certificate Information
openssl x509 -in certificate.pem -text -noout

This displayed certificate information including:

Subject
Issuer
Validity period
Public key information
Signature information
5. Verify the Certificate
openssl verify -CAfile certificate.pem certificate.pem

Result:

certificate.pem: OK

This confirms that the certificate successfully verifies against itself.

6. Inspect the Certificate Signing Request
openssl req -in request.csr -text -noout

The CSR information was inspected to verify the requested certificate identity and public key information.

7. Check Certificate Identity and Validity
openssl x509 -in certificate.pem -noout -subject -issuer -dates

The practical produced:

Subject: C=IN, ST=Punjab, L=Phagwara, O=iStudio,
OU=Cybersecurity, CN=localhost

Issuer: C=IN, ST=Punjab, L=Phagwara, O=iStudio,
OU=Cybersecurity, CN=localhost

The Subject and Issuer are the same because this is a self-signed certificate.

The certificate validity period is one year.

PKI Components Demonstrated
Private Key

The private key is kept secret and is used to create digital signatures and certificates.

Public Key

The public key can be shared and is included in the certificate.

Certificate Signing Request

A CSR contains the requested certificate information and public key. It is normally submitted to a Certificate Authority (CA).

X.509 Certificate

An X.509 certificate binds an identity to a public key and contains information such as the subject, issuer and validity period.

Self-Signed Certificate

In this practical, the certificate was signed by its own private key rather than by a trusted external Certificate Authority.

Evidence

Screenshots are included in the screenshots/ directory:

X.509 certificate details
Certificate verification
CSR details
Certificate subject, issuer and validity
Security Considerations

The private key was generated only for this controlled laboratory exercise.

The private key, CSR and certificate files must not be committed to a public repository.

The project's .gitignore is configured to exclude:

*.pem
*.csr
Learning Outcome

This practical demonstrated the basic PKI workflow:

Private Key
     ↓
Certificate Signing Request
     ↓
X.509 Certificate
     ↓
Certificate Verification

It also demonstrated the difference between a self-signed certificate and a certificate issued by a trusted Certificate Authority.

Ethical Use

PKI and certificate-generation techniques should be used only for authorized systems, educational laboratories and legitimate security applications.

Author

Neha
B.Sc. Information Technology
Cybersecurity / Ethical Hacking

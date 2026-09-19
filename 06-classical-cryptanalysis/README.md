# Practical 6: Classical Cryptanalysis

## Objective

To understand basic classical cryptanalysis techniques by analyzing a Caesar cipher using brute-force decryption and letter frequency analysis.

## Tools Used

- Kali Linux
- Python 3
- Bash Terminal

## Practical Description

Classical cryptanalysis studies techniques for analyzing and breaking traditional cryptographic systems.

In this practical, a Caesar cipher was analyzed using two techniques:

1. Brute-force attack
2. Frequency analysis

The Caesar cipher shifts each letter of the plaintext by a fixed number of positions in the alphabet.

## 1. Caesar Cipher Brute-Force Attack

The ciphertext used in this practical was:

```text
WKHTXLFNEURZQIRAMXPSVRYHUWKHODCBGRJ

A Python script was created to try all possible Caesar shifts.

def decrypt_caesar(ciphertext, shift):
    decrypted_text = ""

    for char in ciphertext:
        if char.isalpha():
            shifted = chr(((ord(char.upper()) - 65 - shift) % 26) + 65)
            decrypted_text += shifted
        else:
            decrypted_text += char

    return decrypted_text

The script tested shifts from 1 to 25.

The correct plaintext was recovered at:

Shift 3:
THEQUICKBROWNFOXJUMPSOVERTHELAZYDOG

This demonstrates why a Caesar cipher is vulnerable to brute-force attacks: there are only 25 possible non-trivial shifts.

2. Frequency Analysis

A second Python script was used to count the frequency of letters in the ciphertext.

Example output:

R: 4
H: 3
W: 2
K: 2
X: 2
U: 2

Frequency analysis can help identify likely plaintext letters by comparing the frequency of ciphertext characters with expected language patterns.

However, the ciphertext used in this practical is short, so frequency analysis provides limited statistical evidence.

Files
brute.py
frequency.py
ciphertext.txt
brute.py

Attempts all Caesar cipher shifts and displays the resulting plaintext candidates.

frequency.py

Counts the occurrence of each alphabetic character in the ciphertext.

ciphertext.txt

Contains the Caesar-encrypted message used for the demonstration.

Evidence

Screenshots are included in the screenshots/ directory:

Caesar cipher brute-force results
Letter frequency analysis
Ciphertext used in the practical
Security Concepts Demonstrated
Caesar Cipher

A substitution cipher where each letter is shifted by a fixed number of positions.

Brute-Force Attack

An attacker systematically tries all possible keys until meaningful plaintext is found.

Frequency Analysis

An analytical technique that uses character frequency patterns to help break substitution ciphers.

Learning Outcome

This practical demonstrated how weak classical ciphers can be analyzed using simple cryptanalytic techniques.

It showed that a Caesar cipher provides very little security because its keyspace is extremely small and its structure can be analyzed easily.

Ethical Use

Cryptanalysis techniques should only be used against systems, data and cryptographic challenges for which authorization has been provided.

Author

Neha
B.Sc. Information Technology
Cybersecurity / Ethical Hacking


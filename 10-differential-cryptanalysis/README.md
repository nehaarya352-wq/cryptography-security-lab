# Practical 10: Differential Cryptanalysis

## Objective

To understand the basic concept of differential cryptanalysis and demonstrate how differences between pairs of plaintext inputs can produce patterns in ciphertext outputs.

## Tools Used

- Kali Linux
- Python 3
- Bash Terminal

## Practical Overview

Differential cryptanalysis is a cryptanalytic technique that studies how differences between pairs of inputs propagate through a cryptographic algorithm.

Instead of analyzing a single plaintext and ciphertext, the technique examines pairs of inputs and their corresponding outputs.

For two plaintext values:

```text
P1 and P2

their input difference can be calculated using XOR:

ΔP = P1 XOR P2

After encryption, the corresponding ciphertext difference is:

ΔC = C1 XOR C2

By studying the relationship between ΔP and ΔC, an analyst can identify statistical patterns in a cipher.

Educational Demonstration

A small educational S-box was implemented in Python to demonstrate the concept.

The program calculates a Differential Distribution Table (DDT).

The table records how often each output difference occurs for every possible input difference.

Program

The demonstration was implemented in:

differential.py

The program:

Defines a small S-box.
Calculates input differences.
Calculates corresponding output differences.
Builds a Differential Distribution Table.
Displays the frequency of output differences.
Calculates example differential probabilities.
Running the Program

The program was executed using:

python3 differential.py
Differential Distribution Table

The Differential Distribution Table represents the frequency of output differences for each input difference.

Conceptually:

Input Difference
       |
       v
     S-Box
       |
       v
Output Difference
       |
       v
Frequency / Probability

A higher frequency for a particular input-output difference pair indicates that the relationship occurs more frequently for the tested S-box.

Basic Differential Cryptanalysis Flow
Plaintext Pair
     |
     v
Calculate ΔP
     |
     v
Encryption
     |
     v
Ciphertext Pair
     |
     v
Calculate ΔC
     |
     v
Analyze ΔP → ΔC Patterns
Key Concepts Learned
XOR Difference

Differential cryptanalysis commonly represents the difference between two values using XOR.

ΔP = P1 XOR P2

and:

ΔC = C1 XOR C2
S-Box

An S-box is a substitution component used in many cryptographic algorithms to transform input values into different output values.

Differential Distribution Table

A Differential Distribution Table records how frequently an output difference occurs for a particular input difference.

Differential Probability

The frequency of a particular input-output difference pair can be expressed as a probability:

Probability = Occurrences / Total Inputs
Evidence

The practical screenshot demonstrates:

Execution of the Python differential cryptanalysis program
Generated Differential Distribution Table
Example differential analysis
Calculated differential probabilities
Ethical Considerations

This practical uses a small educational S-box created specifically for laboratory demonstration.

It does not target real systems, credentials, or real-world encrypted data.

Cryptanalysis should only be performed on algorithms, systems, and data for which appropriate authorization has been provided.

Learning Outcomes

After completing this practical, I understood:

The basic concept of differential cryptanalysis
How plaintext differences can be represented using XOR
How ciphertext differences can be analyzed
The purpose of an S-box
How a Differential Distribution Table is generated
How differential probabilities can reveal statistical patterns
Why cryptographic algorithms are designed to resist differential attacks
Author

Neha
B.Sc. Information Technology
Cybersecurity / Ethical Hacking

GitHub: https://github.com/nehaarya352-wq

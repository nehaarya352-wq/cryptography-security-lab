# Practical 11: Side-Channel Timing Attack

## Objective

To understand the basic concept of a timing side-channel attack and demonstrate how differences in execution time can potentially reveal information about a secret value.

## Tools Used

- Kali Linux
- Python 3
- Bash Terminal

## Practical Overview

A side-channel attack does not directly break the mathematical security of a cryptographic algorithm.

Instead, it observes information leaked by the implementation, such as:

- Execution time
- Power consumption
- Electromagnetic emissions
- Memory access patterns

In this practical, a simple Python program was created with an intentionally vulnerable string comparison function.

The program compares a secret value character by character and introduces a small delay after every correctly matched character.

This makes the execution time dependent on how many characters of the supplied guess are correct.

## Laboratory Setup

The demonstration uses a local Python program with the following secret:

```text
SECURE

Several guesses were tested, including:

XXXXXX
SXXXXX
SEXXXX
SECXXX
SECRXX
SECURX
SECURE
Vulnerable Comparison

The comparison function processes the characters one at a time.

for expected, actual in zip(SECRET, guess):
    if expected != actual:
        return False

    time.sleep(0.01)

When a character is incorrect, the function returns immediately.

When a character is correct, the program continues to the next character.

Therefore, guesses containing more correct characters take longer to process.

Running the Program

The program was executed using:

python3 vulnerable.py

The program measures execution time using Python's time.perf_counter() function.

Timing Attack Concept

The basic concept can be represented as:

Attacker Guess
      |
      v
Character Comparison
      |
      +---- Incorrect ----> Return Quickly
      |
      +---- Correct ------> Continue Comparison
                                |
                                v
                           More Execution Time

An attacker can compare timing measurements for different guesses and look for patterns that reveal information about the secret.

Example

Consider the following simplified results:

XXXXXX  -> Very short time
SXXXXX  -> Longer time
SEXXXX  -> Longer time
SECXXX  -> Longer time
SECRXX  -> Longer time
SECURX  -> Longer time
SECURE  -> Longest time

The increasing execution time demonstrates the timing side channel created by the vulnerable comparison.

Why This Happens

The vulnerable comparison leaks information because it stops at the first incorrect character.

Therefore:

More correct characters
        ↓
More comparisons completed
        ↓
Longer execution time

In a real system, the timing differences may be extremely small and affected by noise from the operating system, network, CPU scheduling, virtualization, and other processes.

Key Concepts Learned
Side-Channel Attack

A side-channel attack uses information unintentionally leaked by the implementation of a system rather than directly attacking its intended mathematical design.

Timing Attack

A timing attack analyzes differences in execution time to obtain information about secret data.

Information Leakage

Even a small timing difference can potentially reveal information when measurements are repeated and statistically analyzed.

Constant-Time Comparison

Security-sensitive comparisons should avoid leaking information through data-dependent execution time.

Evidence

The practical screenshot demonstrates:

Execution of the vulnerable Python program
Multiple test guesses
Execution time for each guess
The relationship between matching characters and execution time
Security Considerations

This practical uses a deliberately vulnerable local program created specifically for educational purposes.

It does not target an external system or real credentials.

In real security-sensitive applications, developers should use appropriate constant-time comparison mechanisms when comparing secrets.

Learning Outcomes

After completing this practical, I understood:

What a side-channel attack is
What a timing attack is
How execution time can leak information
How character-by-character comparisons can create timing differences
Why constant-time comparison is important
How implementation details can affect cryptographic security
The difference between attacking an algorithm and attacking its implementation
Author

Neha
B.Sc. Information Technology
Cybersecurity / Ethical Hacking

GitHub: https://github.com/nehaarya352-wq

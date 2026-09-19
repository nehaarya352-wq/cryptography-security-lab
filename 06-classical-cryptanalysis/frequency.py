from collections import Counter

ciphertext = "WKHTXLFNEURZQIRAMXPSVRYHUWKHODCBGRJ"

letters = [
    char.upper()
    for char in ciphertext
    if char.isalpha()
]

frequency = Counter(letters)

print("Letter Frequency Analysis")
print("=" * 40)

for letter, count in frequency.most_common():
    print(f"{letter}: {count}")

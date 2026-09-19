def decrypt_caesar(ciphertext, shift):
    decrypted_text = ""

    for char in ciphertext:
        if char.isalpha():
            shifted = chr(((ord(char.upper()) - 65 - shift) % 26) + 65)
            decrypted_text += shifted
        else:
            decrypted_text += char

    return decrypted_text


ciphertext = "WKHTXLFNEURZQIRAMXPSVRYHUWKHODCBGRJ"

print("Caesar Cipher Brute-Force Analysis")
print("=" * 50)

for shift in range(1, 26):
    print(f"Shift {shift:2}: {decrypt_caesar(ciphertext, shift)}")

# Differential Cryptanalysis Educational Demonstration

SBOX = [
    0x6, 0x4, 0xC, 0x5,
    0x0, 0x7, 0x2, 0xE,
    0x1, 0xF, 0x3, 0xD,
    0x8, 0xA, 0x9, 0xB
]

def sbox(x):
    return SBOX[x]

def calculate_differential_table():
    table = [[0 for _ in range(16)] for _ in range(16)]

    for input_difference in range(16):
        for x in range(16):
            y1 = sbox(x)
            y2 = sbox(x ^ input_difference)

            output_difference = y1 ^ y2

            table[input_difference][output_difference] += 1

    return table


table = calculate_differential_table()

print("Differential Distribution Table")
print("=" * 70)

print("     ", end="")

for output_difference in range(16):
    print(f"{output_difference:X} ", end="")

print()

for input_difference in range(16):
    print(f"{input_difference:X}:   ", end="")

    for output_difference in range(16):
        print(f"{table[input_difference][output_difference]:2} ", end="")

    print()


print("\nExample Differential Analysis")
print("=" * 70)

input_difference = 0x1

print(f"Selected input difference: {input_difference:X}")

print("\nPossible output differences:")

for output_difference in range(16):
    count = table[input_difference][output_difference]

    if count > 0:
        probability = count / 16

        print(
            f"Input difference {input_difference:X} -> "
            f"Output difference {output_difference:X} "
            f"occurs {count}/16 times "
            f"(probability = {probability:.2f})"
        )


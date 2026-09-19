import time

SECRET = "SECURE"

def insecure_compare(guess):
    if len(guess) != len(SECRET):
        return False

    for expected, actual in zip(SECRET, guess):
        if expected != actual:
            return False

        # Artificial delay to make the timing difference visible
        time.sleep(0.01)

    return True


tests = [
    "XXXXXX",
    "SXXXXX",
    "SEXXXX",
    "SECXXX",
    "SECRXX",
    "SECURX",
    "SECURE"
]

print("Timing Attack Demonstration")
print("=" * 50)

for guess in tests:
    start = time.perf_counter()

    result = insecure_compare(guess)

    elapsed = time.perf_counter() - start

    print(
        f"Guess: {guess} | "
        f"Result: {result} | "
        f"Time: {elapsed:.6f} seconds"
    )

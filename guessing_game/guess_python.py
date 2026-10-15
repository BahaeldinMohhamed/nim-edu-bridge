# ==========================================
# Project: Guess the Number (Python Version)
# ------------------------------------------
# SIMILARITIES with Nim: Clean, indentation-based syntax, 
# readable control flow (while loops, if/else statements).
# DIFFERENCES from Nim: Dynamically typed (no need to declare 
# variable types or use var/let), uses an interpreter instead of compilation.
# ==========================================

import random

# Generate a random secret number between 1 and 100
secret = random.randint(1, 100)

# Get user input and convert it directly to an integer
guess = int(input("Guess the number (1-100): "))

# Main game loop
while guess != secret:
    if guess < secret:
        print("Too low!")
    else:
        print("Too high!")
    guess = int(input("Try again: "))

print("Correct! The number was:", secret)
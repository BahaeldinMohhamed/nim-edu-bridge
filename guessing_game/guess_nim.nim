# ==========================================
# Project: Guess the Number (Nim Version)
# ------------------------------------------
# SIMILARITIES with Python: Clean syntax, easy-to-read indentation,
# straightforward control flow (while loops, if/else).
# DIFFERENCES from Python: Statically typed under the hood, requires 
# explicit imports (random, strutils), uses 'var' for mutable variables 
# and 'let' for constants, and compiles directly to native C for high performance.
# ==========================================

import random, strutils

# Initialize the random number generator
randomize()

# 'let' defines an immutable constant known at runtime
let secret = rand(1..100)
echo "Guess the number (1-100):"

# 'var' defines a mutable variable that can change during the loop
var guess = parseInt(stdin.readLine())

while guess != secret:
  if guess < secret:
    echo "Too low!"
  else:
    echo "Too high!"
  echo "Try again:"
  guess = parseInt(stdin.readLine())

echo "Correct! The number was: ", secret
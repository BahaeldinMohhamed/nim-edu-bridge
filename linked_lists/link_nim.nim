# ==========================================
# Project: Linked List Memory Management (Nim Version)
# ------------------------------------------
# COMPARISON WITH C: 
# - SIMILARITY: Compiles down to C/C++ with raw performance, handling 
#   low-level data structures like linked lists efficiently.
# - DIFFERENCE: No manual `malloc()` or `free()` required! 
#   Nim uses **ARC/ORC** (Automatic/Optimized Reference Counting) at compile-time.
#   The compiler automatically cleans up memory the exact moment it's no longer needed,
#   preventing memory leaks with zero runtime garbage-collection pauses.
# ==========================================

# Define a reference object (analogous to structs with pointers in C)
type
  Node = ref object
    data: int
    next: Node

# Create the linked list cleanly with high-level syntax
var head = Node(data: 10, next: Node(data: 20, next: nil))

# Traverse and print the list
var current = head
while current != nil:
  echo "Node value: ", current.data
  current = current.next

# NOTE: No explicit `free()` needed! Nim's ARC/ORC memory management 
# handles deallocation automatically under the hood at compile-time.
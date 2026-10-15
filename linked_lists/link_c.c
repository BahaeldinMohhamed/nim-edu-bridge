/*
 * ==========================================
 * Project: Linked List Memory Management (C Version)
 * ------------------------------------------
 * NATURE OF C: The developer has absolute control over the hardware 
 * and memory. There is no automatic garbage collection.
 * KEY MECHANISMS: 
 * - Manual memory allocation using `malloc()` and `sizeof()`.
 * - Manual pointer manipulation (`->` operator).
 * - Mandatory manual deallocation using `free()` to prevent Memory Leaks.
 * ==========================================
 */

#include <stdio.h>
#include <stdlib.h>

// Define a Node structure for a Linked List
struct Node {
    int data;
    struct Node* next;
};

int main() {
    // 1. Manually allocate memory for the first node on the heap
    struct Node* head = (struct Node*)malloc(sizeof(struct Node));
    head->data = 10;
    head->next = NULL;

    // 2. Manually allocate memory for the second node
    struct Node* second = (struct Node*)malloc(sizeof(struct Node));
    second->data = 20;
    second->next = NULL;
    head->next = second;

    // 3. Traverse the list using pointers
    struct Node* current = head;
    while (current != NULL) {
        printf("Node value: %d\n", current->data);
        current = current->next;
    }

    // 4. CRITICAL IN C: Free the allocated memory manually to avoid leaks.
    // If you forget this, it causes memory leaks. If you use freed memory, it crashes.
    free(second);
    free(head);

    return 0;
}
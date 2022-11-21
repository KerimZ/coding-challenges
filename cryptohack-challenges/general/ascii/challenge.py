#!/usr/bin/env python3

# Array of ascii codes representing the flag
arr = [99, 114, 121, 112, 116, 111, 123, 65, 83, 67, 73, 73, 95, 112, 114, 49, 110, 116, 52, 98, 108, 51, 125]

# List comprehension to convert each element in the original array into its ascii character and join the array into a single string
flag = ''.join(chr(i) for i in arr)

# Output the flag to the screen
print(flag)
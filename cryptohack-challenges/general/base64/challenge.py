#!/usr/bin/env python3

import base64

# Original challenge string containing binary data in hex representation
flag_hex = "72bca9b68fc16ac7beeb8f849dca1d8a783e8acf9679bf9269f7bf"

# Convert string to byte format, (would still be displayed in hex)
flag_bytes = bytes.fromhex(flag_hex)

# Base64 encode string of binary data to produce printable characters, which also reveal the flag and print it to the screen
print(base64.b64encode(flag_bytes))

#!/bin/bash 

# Escape Sequence Characters

# \n  : New Line 
# \t  : Move the cursor to a tab space 

echo Line1
echo Line2

echo -e "Line3\nLine4"
echo -e "Line5\tLine6"

echo -e "Line7\n\tLine8"

# Whenever you're using special characters , always enclose them in DOUBLE QUOTES
# " "  : Double Quotes 
# ' '  : Single Quotes
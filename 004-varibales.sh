#!/bin/bash

# What is a variable ?
# A variable is something that holds data and can change dynamically

# the advantage & disadvantage in shell is that there are no Data Types

# Declaring the variables

a=10
b=def
CUSTDATA="shipping"

# In bash, everything will be considered as string by default.

# How can we print a variable ?  $var

# $ is a special variableand this helps you in printing the value of the variable 
echo $a
echo "The value of the variable b is $b"
echo -e "The value of the variable a is \e[32m ${a} \e[0m"

# Since in bash and shell, there are lot of versions, both of the syntaxes are valid, in case if anyone doesn't work, prefer to use the other one.
# echo $a 
# echo ${a}

# Printing a variable, wher ethe value of it is not declared , what will happen ? It will print null.
echo "The value of the variable d is ${d}"

# rm -rf /data/prod/${CUSTDATA} ====> /data/prod/shipping
# rm -rf /data/prod/${APPDATA} ====> /data/prod
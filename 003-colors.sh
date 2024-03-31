#!/bin/bash 


# Each and every color you see on terminal will have a color code and we need to use that code baesd on our need.
# Colors       Foreground          Background
# Red               31                  41
# Green             32                  42
# Yellow            33                  43
# Blue              34                  44
# Magenta           35                  45
# Cyan              36                  46

# Syntax to print colors 

# echo -e "\e[COLORCODEm I am printing a color \e[0m"

echo -e "\e[32m I am printing GREEN COLOR \e[0m"
echo -e "\e[31m I am printing RED COLOR \e[0m"
echo -e "\e[33m I am printing Yellow COLOR \e[0m"
echo -e "\e[34m I am printing Blue COLOR \e[0m"
echo -e "\e[35m I am printing Magenta COLOR \e[0m"

# () : Paranthesis
# [] : Square Bracker
# {} : Flower Bracker

#### How can we add a baccGround color ? Here is the syntax 

# echo -e "\e[43;31m I am printing Text with a backGround Color \e[0m"

echo -e "\n\n"

echo -e "\e[43;31m I am printing Text with a backGround Color \e[0m"
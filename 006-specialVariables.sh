#!/bin/bash 

# Special Variables are the pre-defined variables with specific special pre-defined powers.

# Special Variables are $0 to $9, $* , $@, $# ,  $$

# Can you create special variables on Bash ? 100% No , you can just use the special variables that are offered.

a=3000 
TEAM=$1
PROJECT=$2
echo "Value of a is $a" 
echo "Script Name is : $0"

# $0 : Prints the name of the script you're running

echo -e "Name of the team running the script is : \e[33m $TEAM \e[0m"
echo -e "Name of the project is : \e[33m $PROJECT \e[0m"

### bash scriptName.sh    arg1   arg2   arg3   arg4 . . . . . . arg9
### bash scriptName.sh  firstArg   secondArg  thirdArd 
### bash abc.sh  10   20   30 
# bash arg1  arg2  arg3 arg4  arg5  arg6 arg7  arg8  arg9  arg10 
#        1     2     3    4    5     6    7      8    9      10
# ( You supply up to 9 arguments)


echo $0   # prints the scriptName
echo $#   # Prints the arguments used in the script 
echo $?   # Prints the exit code of the previous command 
echo $*   # Prints all the arguments user
echo $@   # Prints all the arguments user
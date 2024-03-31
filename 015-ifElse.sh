#!/bin/bash 

echo -e "Demo on if, if else, else if conditions Usage"

ACTION=$1

if [ "$ACTION" = "start" ] ; then 
    echo -e "\e[32m Starting Dispatch Service \e[0m"
    exit 0 

elif [ "$ACTION" = "stop" ] ; then 
    echo -e "\e[31m Stopping Dispatch Service \e[0m" 
    exit 1

elif [ "$ACTION" = "restart" ] ; then 
    echo -e "\e[34m Restarting Dispatch Service \e[0m" 
    exit 2
else 
    echo -e "\e[35m Valid options are start stop restart only \e[0m"
    exit 3
fi

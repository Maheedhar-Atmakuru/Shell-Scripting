#!/bin/bash

#Check whether you're running this script with sudo or a root user
ID=$(id -u)
if [$ID -ne 0] ; then
    echo -e "\e[31m This Script is expected to run with sudo\e[0m"
    exit 1
fi

echo "Installing nginix Web Server"
dnf install nginx -y 

echo "Enabling the service"
systemctl enable nginx

echo "Starting the service"
systemctl start nginx

# echo "downloading the aplication"
# curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

# echo "Deploying the application"
# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-main README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf




#!/bin/bash

#Check whether you're running this script with sudo or a root user
ID=$(id -u)
if [ $ID -ne 0 ] ; then
    echo -e "\e[31m This Script is expected to run with sudo \e[0m"
    exit 1
fi

COMPONENT="frontend"
LOGFILE="/tmp/$1.log"

stat() {
    if [ $1 -eq 0 ]; then
        echo -e "\e[32m Success \e[0m"
    else
        echo "\e[31m Failure \e[0m"
    fi
}

echo -n "Installing nginix Web Server"
dnf install nginx -y        &>> $LOGFILE
stat $?

echo -n "Enabling the service"
systemctl enable nginx         &>> $LOGFILE
stat $?

echo -n "Starting the service"
systemctl start nginx        &>> $LOGFILE
stat $?

echo -n "downloading the $COMPONENT Component:"
curl -s -L -o /tmp/$COMPONENT.zip "https://github.com/stans-robot-project/$COMPONENT/archive/main.zip"
stat $?

echo -n "Performing $COMPONENT cleanup"
cd /usr/share/nginx/html
rm -rf * &>> $LOGFILE
stat $?

echo -n "Extracting $COMPONENT :"
unzip /tmp/frontend.zip        &>> $LOGFILE
stat $?

echo -n "Configuring $COMPONENT :"
mv ${COMPONENT}-main/* .        &>> $LOGFILE
mv static/* .        &>> $LOGFILE
rm -rf ${COMPONENT}-main README.md        &>> $LOGFILE
mv localhost.conf /etc/nginx/default.d/roboshop.conf        &>> $LOGFILE
stat $?

# echo "Deploying the application"
# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-main README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf




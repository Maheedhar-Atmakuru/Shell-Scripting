#!/bin/bash 

# This script creates EC2 Instaces & the associated DNS Records for the created servers

AMI_ID="ami-072983368f2a6eab5"
SGID="sg-03b4d0f3339fdc89c"               # Create your own Security Group that allows allows all and then add your SGID 
HOSTEDZONE_ID="Z08185973US3IG8LL97B8"     # User your private zone id
COMPONENT=$1

if [ -z $1 ] ; then
    echo -e "\e[31m   COMPONENT NAME IS NEEDED: \e[0m"
    echo -e "\e[36m \t\t Example Usage : \e[0m  bash launch-ec2 ratings"
    exit 1
fi 

PRIVATE_IP=$(aws ec2 run-instances --image-id $AMI_ID --instance-type t3.micro --security-group-ids $SGID --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$COMPONENT}]" | jq .Instances[].PrivateIpAddress |sed -e 's/"//g')
echo "$1 Server Created and here is the IP ADDRESS $PRIVATE_IP"

echo "Creating r53 json file with component name and ip address:"
sed -e "s/IPADDRESS/${PRIVATE_IP}/g" -e "s/COMPONENT/${COMPONENT}/g" route53.json  > /tmp/dns.json 

echo "Creating DNS Record for $COMPONENT :"
aws route53 change-resource-record-sets --hosted-zone-id $HOSTEDZONE_ID --change-batch file:///tmp/dns.json 


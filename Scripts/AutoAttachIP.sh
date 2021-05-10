#!/bin/bash

ipaddress=$(/usr/local/bin/aws ec2 describe-addresses --query "Addresses[?NetworkInterfaceId == null ].PublicIp" | jq ".[0]" | tr -d '"')
instance_id=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

echo "AUTO ATTACH ELASTIC IP"
echo "IP_ADDRESS: " $ipaddress > attach.log
echo "INSTANCE_ID: " $instance_id >> attach.log

/usr/local/bin/aws ec2 associate-address --instance-id $instance_id --public-ip $ipaddress >> attach.log 2>&1
RES=$?
echo "the result is : $RES" >> attach.log

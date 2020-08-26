#!/bin/bash
user1="ec2-user"
echo $user1
ip1="34.229.185.151"
echo $ip1
key1="/home/darkman/Downloads/sonykey.pem"
echo $key1
rese=`ssh -i $key1 $user1@$ip1 cat /etc/os-release | sed '3 ! d' | sed 's/[^a-z  A-Z]//g'`
echo $rese
if [ $rese ==  "IDamz" ]
then
   sudo  ssh -i $key1 $user1@$ip1 "sudo yum -y install httpd && sudo systemctl enable httpd && sudo systemctl start httpd.service"
else
    echo "not install"
fi

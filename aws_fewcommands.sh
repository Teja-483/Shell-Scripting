#!/bin/bash
##############################################
#Author: P Dhanya Teja
#Date  : 17-03-2025
#
#The script is related to the print the data of ec2,s3,lamda functions,IAM of AWS

set -x
#aws ec2 describe-instances 
#below one we are sending the ec2 describe-instance to jq, jq means it is used for json data format purpose,
#[] - why we used square brakes means our instaces are not a single one, so we used list '[]'

aws ec2 describe-instances | jq '.Reservations[].Instances[] | {InstanceId,ImageId,InstanceType}'

#below one used for to know only for instanceid alone
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#listing the s3 bucket of list
aws s3 ls

#listing the iam users
aws iam list-users

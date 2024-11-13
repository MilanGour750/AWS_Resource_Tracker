#!/bin/bash


###########################################################
#
# Author - Milan Gour
# Date - 12/11/2024
# Version - 1.00.000
# Reason - To track the resources in an amazon acccount.
#
# ########################################################

# The Things we going to track through this script is 
# 1. EC2 instance
# 2. S3 buckets
# 3. AWS Lambda 
# 4. AWS IAM Users

# List EC2 Instances present in the account
echo "These Are Some instanceid for instance present"
echo " "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#Lists the buckets in AWS Account
echo "These are the aws s3 bucket present."
echo " " 
aws s3 ls

#List Lamba 
echo "These are some of the lamba functions present in the aws account"
echo " "
aws lambda list-functions

#List IAM Users
echo "The IAM Users are :"
echo " " 
aws iam list-users

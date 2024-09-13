#!/bin/bash

################################################
#
# AWS Resource Tracker
#
# Author:Chandra
#
# Version:v1
################################################

# AWS EC2 list
aws ec2 describe-instances

# AWS s3 list

aws s3 ls


# AWS list users

aws iam list-users


# aws list lambda

aws lambda list-functions


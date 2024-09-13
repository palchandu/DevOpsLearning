#!/bin/bash

##########################################################################################################

# Author: Chandra
# Date: 12 sept 2024
#
#
# Version: V1
#
#
# This script will report AWS resource usage
#
#
#########################################################################################################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
set -x
# list s3 buckets

aws s3 ls

# list EC2 Instances
aws ec2 describe-instances | jq '.Reservations[]?.Instances[]?.InstanceId'

# AWS lambda list-function

aws lambda list-functions


# list IAM users

aws iam list-users


#!/bin/bash
aws cloudformation create-stack --stack-name $1 --template-body file://$2 --parameters file://$3
aws cloudformation wait stack-create-complete --stack-name $1 
aws cloudformation create-stack --stack-name $4 --template-body file://$5 --parameters file://$6 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
	--region=us-east-1

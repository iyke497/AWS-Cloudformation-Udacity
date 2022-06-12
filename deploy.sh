#!/bin/bash
aws cloudformation create-stack --stack-name NetInfra --template-body file://network.yml --parameters file://network-params.json
aws cloudformation wait stack-create-complete --stack-name NetInfra
aws cloudformation create-stack --stack-name ServerInfra --template-body file://server.yml --parameters file://server-params.json --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
	--region=us-east-1

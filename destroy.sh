#!/bin/bash
aws cloudformation delete-stack --stack-name ServerInfra
aws cloudformation wait stack-delete-complete --stack-name ServerInfra
aws cloudformation delete-stack --stack-name NetInfra

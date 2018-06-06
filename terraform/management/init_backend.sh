#!/bin/bash
# Tfstate infrastrcuture for Management Stack
aws dynamodb create-table \
         --region ap-southeast-2 \
         --table-name tbol-management-tfstatelock \
         --attribute-definitions AttributeName=LockID,AttributeType=S \
         --key-schema AttributeName=LockID,KeyType=HASH \
         --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

aws s3 mb s3://tbol-management-terraform-backend

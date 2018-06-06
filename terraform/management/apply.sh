#!/usr/bin/env bash
terraform fmt
terraform plan -var-file="terraform.tfvars"
echo "yes" | terraform apply -var-file="terraform.tfvars"

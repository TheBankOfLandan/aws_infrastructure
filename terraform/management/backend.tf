terraform {
  required_version = "~> 0.10"

  backend "s3" {
    region         = "ap-southeast-2"
    encrypt        = true
    bucket         = "tbol-management-terraform-backend"
    key            = "tbol-management-networking.state"
    dynamodb_table = "tbol-management-tfstatelock"
  }
}

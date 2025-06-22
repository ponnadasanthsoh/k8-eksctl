terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version need 
    }
  }

  backend "s3" {
    bucket = "daws76s-remote-vita" # your s3 bucket name in aws uniqe in univers
    key    = "eksctl"
    region = "us-east-1"
    dynamodb_table = "daws76s-remote-locking" #dynamodb need to create  in aws 
  }
}

provider "aws" {
  region = "us-east-1"
}
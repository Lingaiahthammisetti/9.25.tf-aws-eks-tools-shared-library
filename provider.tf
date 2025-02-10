terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
backend "s3" {
  bucket = "tf-aws-tools-jenkins-remote-state"
  key = "tf-aws-jenkins-tools-key"
  region = "us-east-1"
  dynamodb_table="tf-aws-tools-jenkins-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}


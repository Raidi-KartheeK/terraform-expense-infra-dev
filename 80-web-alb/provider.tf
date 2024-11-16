terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  backend "s3" {
    bucket = "expense-web-alb-dev"
    key    = "expense-dev-acm"
    region = "us-east-1"
    dynamodb_table = "aws-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
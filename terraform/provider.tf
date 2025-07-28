terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.5.0"
    }
  }
    backend "s3" {
    bucket = "78s-remote-state-1"
    key    = "BACKEND-deploy_CICD_NNR24"
    region = "us-east-1"
    dynamodb_table="use_lockfile"
  }
}

provider "aws" {
    region="us-east-1"
  # Configuration options
}
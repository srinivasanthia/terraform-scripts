terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "srini-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "demobucket" {
  bucket = "srini-tf-demo-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.42"
    }
  }
  required_version = ">= 0.15.3"
}

provider "aws" {
  profile = "skillmix-lab"
  region  = "us-west-2"
}

resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "yousuf-23"
}
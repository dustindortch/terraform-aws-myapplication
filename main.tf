terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {}

resource "aws_vpc" "vpc" {
  cidr_block = "10.42.0.0/16"

  tags = {
    Name = "myapplication-vpc"
  }
}

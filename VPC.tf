# AWS provider configuration
provider "aws" {
  # AWS region to deploy resources in
  region     = var.aws_region

  # AWS access key (consider using environment variables or AWS IAM roles instead of hardcoding)
  access_key  = var.aws_access_key

  # AWS secret key (consider using environment variables or AWS IAM roles instead of hardcoding)
  secret_key  = var.aws_secret_key
}

# Define a VPC (Virtual Private Cloud)
resource "aws_vpc" "VPC1" {
  # CIDR block for the VPC
  cidr_block = var.VPC_CIDR

  # Enable DNS support within the VPC
  enable_dns_support = true

  # Enable DNS hostnames within the VPC
  enable_dns_hostnames = true

  # Tags to identify the VPC
  tags = {
    Name = var.vpc_name
  }
}




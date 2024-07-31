# Define an Internet Gateway for the VPC
resource "aws_internet_gateway" "IGW" {
  # The VPC ID where the Internet Gateway will be attached
  vpc_id = aws_vpc.VPC1.id

  # Tags to identify the Internet Gateway
  tags = {
    Name = var.igw_name
  }
}


# Define a public subnet in availability zone ap-south-1a
resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = aws_vpc.VPC1.id
  cidr_block              = var.public_subnet_cidrs["1a"]
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 1A"
  }
}

# Define a public subnet in availability zone ap-south-1b
resource "aws_subnet" "public_subnet_1b" {
  vpc_id                  = aws_vpc.VPC1.id
  cidr_block              = var.public_subnet_cidrs["1b"]
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 1B"
  }
}

# Define a public subnet in availability zone ap-south-1c
resource "aws_subnet" "public_subnet_1c" {
  vpc_id                  = aws_vpc.VPC1.id
  cidr_block              = var.public_subnet_cidrs["1c"]
  availability_zone       = "ap-south-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 1C"
  }
}

# Define a private subnet in availability zone ap-south-1a
resource "aws_subnet" "private_subnet_1a" {
  vpc_id                  = aws_vpc.VPC1.id
  cidr_block              = var.private_subnet_cidrs["1a"]
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Subnet 1A"
  }
}

# Define a private subnet in availability zone ap-south-1b
resource "aws_subnet" "private_subnet_1b" {
  vpc_id                  = aws_vpc.VPC1.id
  cidr_block              = var.private_subnet_cidrs["1b"]
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Subnet 1B"
  }
}

# Define a private subnet in availability zone ap-south-1c
resource "aws_subnet" "private_subnet_1c" {
  vpc_id                  = aws_vpc.VPC1.id
  cidr_block              = var.private_subnet_cidrs["1c"]
  availability_zone       = "ap-south-1c"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Subnet 1C"
  }
}





# Define a database subnet group for RDS instances
resource "aws_db_subnet_group" "app_db_sg" {
  # Name of the DB subnet group
  name = var.db_subnet_group_name

  # VPC ID where the subnets are located
  # The VPC ID is dynamically referenced from the VPC resource
  # vpc_id = aws_vpc.VPC1.id

  # List of subnet IDs to be included in the DB subnet group
  subnet_ids = [ aws_subnet.private_subnet_1a.id, aws_subnet.private_subnet_1b.id ]

  # Tags to identify the DB subnet group
  tags = {
    Name = var.db_subnet_group_tag
  }
}



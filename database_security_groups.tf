# Define a security group for the database
resource "aws_security_group" "security_group_db" {
  # Name of the security group
  name        = var.security_group_db_name

  # Description of the security group
  description = "Allow inbound traffic only for MySQL and all outbound traffic"

  # VPC ID where the security group will be created
  vpc_id      = aws_vpc.VPC1.id

  # Tags to identify the security group
  tags = {
    Name = var.security_group_tag
  }
}

# Define an egress rule for the security group allowing all outbound traffic
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  # Security group ID to which this rule applies
  security_group_id = aws_security_group.security_group_db.id

  # CIDR block for allowing all outbound traffic
  cidr_ipv4         = "0.0.0.0/0"

  # Protocol to allow all traffic
  ip_protocol       = "-1"
}

# Define an ingress rule for the security group allowing MySQL traffic
resource "aws_vpc_security_group_ingress_rule" "allow_mysql_traffic_ipv4" {
  # Security group ID to which this rule applies
  security_group_id = aws_security_group.security_group_db.id

  # CIDR block for allowing MySQL traffic
  cidr_ipv4         = "0.0.0.0/0"

  # Port range for MySQL traffic
  from_port         = var.mysql_port
  to_port           = var.mysql_port

  # Protocol to allow (TCP for MySQL)
  ip_protocol       = "tcp"
}




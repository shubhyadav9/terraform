# Define a security group for the application
resource "aws_security_group" "security_group_app" {
  # Security group name
  name        = var.security_group_name
  description = "Allow inbound traffic only for HTTP and SSH, and allow all outbound traffic"
  vpc_id      = aws_vpc.VPC1.id

  tags = {
    Name = "Security Group for App"
  }
}

# Define an egress rule allowing all outbound traffic
resource "aws_vpc_security_group_egress_rule" "app_allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.security_group_app.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

# Define an ingress rule allowing HTTP traffic
resource "aws_vpc_security_group_ingress_rule" "app_allow_http_ipv4_for_all" {
  security_group_id = aws_security_group.security_group_app.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

# Define an ingress rule allowing SSH traffic
resource "aws_vpc_security_group_ingress_rule" "app_allow_ssh_ipv4_for_all" {
  security_group_id = aws_security_group.security_group_app.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}



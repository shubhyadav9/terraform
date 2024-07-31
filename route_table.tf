# Define a route table for the VPC
resource "aws_route_table" "Route_Table" {
  # The VPC ID where the route table will be created
  vpc_id = aws_vpc.VPC1.id

  # Define a route that directs all traffic (0.0.0.0/0) to the Internet Gateway
  route {
    # CIDR block for the route (0.0.0.0/0 allows all traffic)
    cidr_block = "0.0.0.0/0"

    # ID of the Internet Gateway used for routing traffic
    gateway_id = aws_internet_gateway.IGW.id
  }

  # Tags to identify the route table
  tags = {
    Name = var.route_table_name
  }
}

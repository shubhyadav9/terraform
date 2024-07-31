
# Define route table associations for multiple subnets

# Associate public subnet 1a with the route table
resource "aws_route_table_association" "RTASubnet1a" {
  # ID of the public subnet to associate with the route table
  subnet_id = aws_subnet.public_subnet_1a.id

  # ID of the route table to associate with the subnet
  route_table_id = aws_route_table.Route_Table.id
}

# Associate public subnet 1b with the route table
resource "aws_route_table_association" "RTASubnet1b" {
  # ID of the public subnet to associate with the route table
  subnet_id = aws_subnet.public_subnet_1b.id

  # ID of the route table to associate with the subnet
  route_table_id = aws_route_table.Route_Table.id
}

# Associate public subnet 1c with the route table
resource "aws_route_table_association" "RTASubnet1c" {
  # ID of the public subnet to associate with the route table
  subnet_id = aws_subnet.public_subnet_1c.id

  # ID of the route table to associate with the subnet
  route_table_id = aws_route_table.Route_Table.id
}



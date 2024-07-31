# Output block to display the VPC ID after Terraform has applied the configuration
output "VPC_ID" {
  # The name of the output variable. This is what will be used to reference the output value.
  description = "The ID of the VPC that was created."

  # The value of this output is the ID of the VPC resource created by the aws_vpc.VPC1 resource.
  value = aws_vpc.VPC1.id

  # Optional: You can specify an output format for more structured data or use it for further processing
  # sensitive = false
}
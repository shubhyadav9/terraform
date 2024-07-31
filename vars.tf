# Define variables for dynamic configuration of VPC

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
#  default     = "us-east-1"  # Set default region or override it as needed
}

variable "aws_access_key" {
  description = "AWS access key for authentication"
  type        = string
  sensitive   = true  # Mark as sensitive to prevent it from being exposed in logs
}

variable "aws_secret_key" {
  description = "AWS secret key for authentication"
  type        = string
  sensitive   = true  # Mark as sensitive to prevent it from being exposed in logs
}

variable "VPC_CIDR" {
  description = "The CIDR block for the VPC"
  type        = string
#  default     = "10.0.0.0/16"  # Example default value; adjust as needed
}

variable "vpc_name" {
  description = "The name tag for the VPC"
  type        = string
#  default     = "VPC"
}


# Define variables for dynamic values of ec2 instance
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The name of the EC2 key pair"
  type        = string
}

variable "private_key_path" { 
  description = "Path to the private key file for SSH access"
  type        = string
}


# Define variables for dynamic values of application security group
variable "security_group_name" {
  description = "The name of the security group"
  type        = string
#  default     = "security_group1" # Set default security group name or override it as needed
}


# Define variables for dynamic value of application subnet CIDR blocks
variable "public_subnet_cidrs" {
  description = "Map of CIDR blocks for public subnets"
  type        = map(string)
  default = {
    "1a" = "10.0.1.0/24"
    "1b" = "10.0.2.0/24"
    "1c" = "10.0.3.0/24"
  }
}

variable "private_subnet_cidrs" {
  description = "Map of CIDR blocks for private subnets"
  type        = map(string)
  default = {
    "1a" = "10.0.10.0/24"
    "1b" = "10.0.11.0/24"
    "1c" = "10.0.12.0/24"
  }
}


# Define variables for dynamic configuration of db instance
variable "db_allocated_storage" {
  description = "The amount of storage (in GB) allocated for the database instance"
  type        = number
}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
}

variable "db_engine" {
  description = "The database engine to use"
  type        = string
}

variable "db_engine_version" {
  description = "The version of the database engine to use"
  type        = string
}

variable "db_instance_class" {
  description = "The instance class for the database"
  type        = string
}

variable "db_username" {
  description = "The master username for the database"
  type        = string
}

variable "db_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group to use"
  type        = string
}

variable "db_parameter_group_name" {
  description = "The parameter group to associate with the database instance"
  type        = string
}

variable "db_skip_final_snapshot" {
  description = "Whether to skip the final snapshot when deleting the database instance"
  type        = bool
}


# Define variables for dynamic configuration of DB security group
variable "security_group_db_name" {
  description = "The name of the security group for the database"
  type        = string
#  default     = "security_group2"
}

variable "security_group_tag" {
  description = "Tag to identify the security group"
  type        = string
#  default     = "Security Group for DB"
}

variable "mysql_port" {
  description = "The port on which MySQL is listening"
  type        = number
#  default     = 3306
}


# Define variables for dynamic configuration of database subnet group
variable "db_subnet_group_tag" {
  description = "Tag to identify the DB subnet group"
  type        = string
  default     = "My DB subnet group"
}


# Define variables for dynamic configuration of IGW
variable "igw_name" {
  description = "The name tag for the Internet Gateway"
  type        = string
#  default     = "VPC Internet Gateway"  # Set default value; can be overridden if needed
}


# Define variables for dynamic configuration for route table
variable "route_table_name" {
  description = "The name tag for the route table"
  type        = string
#  default     = "Routing Table for IGW"  # Set default value; can be overridden if needed
}

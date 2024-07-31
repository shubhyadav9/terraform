# values for VPC variables
aws_region = "ap-south-1"
aws_access_key = "your_access_key"
aws_secret_key = "your_secret_key"
VPC_CIDR = "10.0.0.0/16"
vpc_name = "VPC"

# values for ec2 instance variables
ami_id = "ami-0d1e92463a5acf79d"
instance_type = "t2.micro"
key_name = "ec2_login_key"
private_key_path = "enter the path of your private key in local machine"

# values for application Security group variables
security_group_name = "security_group1"

# values for db instance variables
db_allocated_storage = 10
db_name = "mywordpressdb"
db_engine = "mysql"
db_engine_version = "8.0.35"
db_instance_class = "db.t3.micro"
db_username = "enter the user name"
db_password = "enter the password"
db_subnet_group_name = "db subnet group"
db_parameter_group_name = "default.mysql8.0"
db_skip_final_snapshot = true

# values for db security group variables
security_group_db_name = "security_group2"
security_group_tag = "Security Group for DB"
mysql_port = 3306

# values for db subnet group variables
db_subnet_group_tag = "DB subnet group"

# values for IGW variables
igw_name = "VPC Internet Gateway"

# values for route table variables
route_table_name = "Routing Table for IGW"
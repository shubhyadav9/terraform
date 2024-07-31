# Define an RDS database instance for MySQL
resource "aws_db_instance" "WordPressdb" {
  # Define the storage size for the database instance
  allocated_storage = var.db_allocated_storage

  # Define the name of the database to create
  db_name = var.db_name

  # Specify the database engine
  engine = var.db_engine

  # Specify the version of the database engine
  engine_version = var.db_engine_version

  # Define the instance class/type for the database
  instance_class = var.db_instance_class

  # Define the master username for the database
  username = var.db_username

  # Define the master password for the database
  password = var.db_password

  # Specify the DB subnet group to use
  db_subnet_group_name = var.db_subnet_group_name

  # Reference the security group for the database
  vpc_security_group_ids = [aws_security_group.security_group_db.id]

  # Specify the parameter group to use for the database
  parameter_group_name = var.db_parameter_group_name

  # Do not take a final snapshot when deleting the database instance
  skip_final_snapshot = var.db_skip_final_snapshot

  # Optionally, you can add additional settings like backup retention, multi-AZ deployments, etc.
}
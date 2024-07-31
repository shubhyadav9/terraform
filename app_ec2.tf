# Define the AWS EC2 instance for the application
resource "aws_instance" "application_ec2" {
  # Use a variable for the AMI to make it more dynamic
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  # Reference to the security group and subnet
  vpc_security_group_ids = [aws_security_group.security_group_app.id]
  subnet_id              = aws_subnet.public_subnet_1a.id

  # Define tags for the instance
  tags = {
    Name = "Application Wordpress OS"
    Team = "DEV"
  }

  # Ensure the instance is created after t he database and subnet are ready
  depends_on = [
    aws_db_instance.WordPressdb,
    aws_subnet.public_subnet_1a
  ]
}

# Define a null_resource for provisioning the EC2 instance
resource "null_resource" "remote_exec" {
  # Provision the EC2 instance with remote commands
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo yum install git -y",
      "sudo yum install mariadb10.5 php8.2 -y",
      "sudo git clone https://github.com/WordPress/WordPress.git",
      "sudo mv WordPress/* /var/www/html/",
      "sudo chown -R apache /var/www/html/",
      "sudo systemctl restart httpd"
    ]
  }

  # Define connection details for the remote-exec provisioner
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file(var.private_key_path)
    host        = aws_instance.application_ec2.public_ip
  }

  # Ensure remote-exec is executed only after the EC2 instance is created
  depends_on = [aws_instance.application_ec2]
}

# Define a null_resource for executing local commands
resource "null_resource" "local_exec" {
  # Execute a local command to open the application in the browser
  provisioner "local-exec" {
    command = "start chrome http://${aws_instance.application_ec2.public_ip}/"
  }

  # Ensure this executes only after remote-exec provisioning is complete
  depends_on = [null_resource.remote_exec]
}

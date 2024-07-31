**TERRAFORM INFRASTRUCTURE SETUP**

This repository contains Terraform configurations to set up a cloud infrastructure with the following components:

- Virtual Private Cloud (VPC)
- AWS EC2 instances for applications
- Security groups
- Private and public subnets
- RDS (Relational Database Service) instance
- Internet gateway
- Route tables

The Terraform code is organized to support multiple environments (dev, prod, test) with separate variable files for each environment.

**Overview**

The Terraform code provisions the following resources:

- VPC: Creates a Virtual Private Cloud (VPC) for network isolation.
- EC2 Instances: Launches EC2 instances for applications and defines security groups.
- Subnets: Creates three private and three public subnets to segregate application and database tiers.
- RDS Instance: Sets up a relational database instance and associated security groups.
- Internet Gateway: Configures an internet gateway for internet access.
- Route Tables: Sets up route tables and associates them with public subnets.

**Variables**

Variables are defined in vars.tf and used across different Terraform configurations

**Environment-Specific Configurations**

Configurations for different environments are specified in separate .tfvars files:

- Development Environment: dev.tfvars
- Production Environment: prod.auto.tfvars
- Testing Environment: test.tfvars

**Outputs**

After a successful deployment, Terraform will output the following values:

*VPC ID*  [Other values can also be defined according to the requirement]

These outputs are defined in outputs.tf.

**Dependencies**

- Terraform 1.0 or later
- AWS CLI configured with appropriate permissions

**Contribution**

Contributions to this Terraform configuration are welcome. Please open issues or submit pull requests for improvements or fixes.

































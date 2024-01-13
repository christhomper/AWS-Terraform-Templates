# AWS-Terraform-Templates

This repository contains Terraform code to provision a basic AWS infrastructure with a Virtual Private Cloud (VPC), Subnet, Internet Gateway, Route Table, Security Group, Launch Configuration, and Auto Scaling Group.

## Prerequisites
Before you begin, make sure you have the following:

1. AWS Account: You need an AWS account to deploy the infrastructure.
2. Terraform: Install Terraform https://developer.hashicorp.com/terraform/install on your local machine.

## Usage
Follow these steps to deploy the infrastructure:

1. Clone the repository:
     git clone followed by the ssh of the repo
2. cd into the repo
3. Initialize Terraform:
     terraform init
4. Apply the Terraform configuration:
     terraform apply
5. To destroy the created resources and clean up the environment, run:
     terraform destroy
   
Note: Ensure that you review and understand the Terraform execution plan before applying changes to your infrastructure.





   

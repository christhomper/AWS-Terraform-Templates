# AWS-Terraform-Templates

This repository contains Terraform code to provision a basic AWS infrastructure with a Virtual Private Cloud (VPC), Subnet, Internet Gateway, Route Table, Security Group, Launch Configuration, and Auto Scaling Group.

## Prerequisites
Before you begin, make sure you have the following:

1. AWS Account: You need an AWS account to deploy the infrastructure.
2. Terraform: Install Terraform https://developer.hashicorp.com/terraform/install on your local machine.

## Usage
Follow these steps to deploy the infrastructure:

     1. From your terminal clone the repository, run:
          git clone git@github.com:christhomper/AWS-Terraform-Templates.git
   
     cd AWS-Terraform-Templates

   
     3. Change directory once more into either Amazon Linux 2, Ubuntu, or Windows
          example, run this command to change directory into Amazon Linux 2: cd "Amazon Linux 2"
          note: parentheses are important around the file you choose in this step
   
     4. Initialize Terraform, run:
          terraform init
   
     5. Generate and review Terraform execution plan, run:
          terraform plan
   
     6. Apply the Terraform configuration, run:
          terraform apply
    
     7. To destroy the created resources and clean up the environment, run:
          terraform destroy
   
Note: Ensure that you review and understand the Terraform execution plan before applying changes to your infrastructure.





   

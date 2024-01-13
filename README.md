# AWS-Terraform-Templates

This repository contains Terraform code to provision a basic AWS infrastructure with a Virtual Private Cloud (VPC), Subnet, Internet Gateway, Route Table, Security Group, Launch Configuration, and Auto Scaling Group.

## Prerequisites
Before you begin, make sure you have the following:

1. AWS Account: You need an AWS account to deploy the infrastructure.
2. Terraform: Install Terraform https://developer.hashicorp.com/terraform/install on your local machine.

## Usage
Follow these steps to deploy the infrastructure:

###1. Clone the repository:
     git clone git@github.com:christhomper/AWS-Terraform-Templates.git
   
###2. Change directory from your terminal into the repo
     cd AWS-Terraform-Templates
   
###3. Change directory once more into either Amazon Linux 2, Ubuntu, or Windows
     example: cd "Amazon Linux 2"
     note: parentheses are important around the file you choose in this step
   
###4. Initialize Terraform:
     terraform init
   
###5. Generate and review Terraform execution plan:
     terraform plan
   
###6. Apply the Terraform configuration:
     terraform apply
    
###7. To destroy the created resources and clean up the environment, run:
     terraform destroy
   
Note: Ensure that you review and understand the Terraform execution plan before applying changes to your infrastructure.





   

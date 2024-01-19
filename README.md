# Terraform-Templates

This repository contains Terraform code to provision a basic AWS infrastructure with a Virtual Private Cloud (VPC), Subnet, Internet Gateway, Route Table, Security Group, Launch Configuration, and Auto Scaling Group.

## Prerequisites
Before you begin, make sure you have the following:

1. AWS Account: You need an AWS account to deploy the infrastructure.
2. Terraform: Install Terraform https://developer.hashicorp.com/terraform/install on your local machine.

## Usage
Follow these steps to deploy the infrastructure:

     1. Open the terminal from your computer

     2. From your terminal clone the repository, run command:
     
          git clone git@github.com:christhomper/AWS-Terraform-Templates.git
   
     3. Change directory from your terminal into the repository, run command:
     
          cd AWS-Terraform-Templates

     4. Change directory once more into either Amazon Linux 2, Ubuntu, or Windows:
     
          example: run this command to change directory into Amazon Linux 2: 
          
               cd "Amazon Linux 2"
               
               note: parentheses are important around the file you choose in this step
   
     5. Initialize Terraform, run command:
     
          terraform init
   
     6. Generate and review Terraform execution plan, run command:
     
          terraform plan
   
     7. Apply the Terraform configuration, run command:
     
          terraform apply
    
     8. To destroy the created resources and clean up your environment, run command:
     
          terraform destroy
   
Note: Ensure that you review and understand the Terraform execution plan before applying changes to your infrastructure.





   

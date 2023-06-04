# Tier-app-via-Terraform

Tier app via Terraform 
1- provision a vpc with IGW and route tables 
2- provision two subnets (public and private) inside the VPC 
3-provision an EC2 instance (App) inside the public subnet. 
4-Provision an Ec2 instance (DB) inside the private subnet.
5-store the state file on s3 bucket and lock it by dynamo db.
No need to install  app or DB inside the instances 

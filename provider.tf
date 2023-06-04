# Configure the provider software version
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-aba101"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_locks"
    access_key = ""
    secret_key = ""
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""

}

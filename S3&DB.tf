# Create an S3 bucket to store the Terraform state file
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-state-bucket-aba101"

  tags = {
    Name = "my_bucket"
  }
}

# Create a DynamoDB table to use for state locking
resource "aws_dynamodb_table" "my_table" {
  name           = "terraform_locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
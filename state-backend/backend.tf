terraform {
  backend "s3" {
    bucket = "terraform-bak"
    key = "ec2/terraform.tfstate"
    region = "us-east-1"
    access_key = ""
    secret_key = ""
    dynamodb_table = "terraform-state-lock"
  }
}

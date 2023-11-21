terraform {
  backend "s3" {
    bucket = "terraform-bak"
    key = "ec2/eip.tfstate"
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  }
}

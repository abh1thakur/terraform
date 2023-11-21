terraform {
  backend "s3" {
    bucket = "terraform-bak"
    key = "ec2/sts.tfstate"
    region     = "us-east-1"
    access_key = "" # If aws cli not configured
    secret_key = ""
    assume_role = {
        role_arn = ""
        session_name = "dummy-session"
    }
  }
}
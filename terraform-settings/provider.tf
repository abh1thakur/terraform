terraform {
  required_version = "< 0.11"
  required_providers {
    aws = {
      version = "5.23.1"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
terraform {
  required_providers {
    aws = {
        version = "~>5.26.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}
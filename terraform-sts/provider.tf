provider "aws" {
    region     = "us-east-1"
    access_key = "" # if aws cli not configured
    secret_key = ""
    assume_role {
      role_arn = ""
      session_name = "dummy-session"
    }
}
variable "ami_ids" {
    type = map
    default = {
        us-east-1 = "ami-01bc990364452ab3e"
        us-east-2 = "ami-01bc990364452ab3f"
    }
}

variable "region" {
  default = "us-east-1"
  type = string
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  
}

variable "tags" {
  type = list
  default = ["test-server","dev-server","prod-server"]
}
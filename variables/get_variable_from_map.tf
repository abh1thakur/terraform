resource "aws_instance" "ec2-instance" {
  ami = "ami-01bc990364452ab3e"
  instance_type = var.instances["us-east-2"]
  }
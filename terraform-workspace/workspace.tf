resource "aws_instance" "ec2" {
  ami = "ami-01bc990364452ab3e"
  instance_type = lookup(var.instance_type,terraform.workspace)
}


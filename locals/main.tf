locals {
  instance_type = "t2.micro"
}
resource "aws_instance" "ec2_mod" {
    ami = var.amid
    instance_type = local.instance_type
  
}
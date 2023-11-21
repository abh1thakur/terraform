locals {
  instance_type = "t2.micro"
}
resource "aws_instance" "ec2_mod" {
    ami = var.amid
    instance_type = local.instance_type
  
}
output "instance_ip" {
    value = aws_instance.ec2_mod.public_ip
}
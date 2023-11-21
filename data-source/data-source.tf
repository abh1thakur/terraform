data "aws_ami" "amis" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
resource "aws_instance" "dev" {
  instance_type = var.type
  count         = var.istest == true ? 1 : 0
  ami           = data.aws_ami.amis.id
}
resource "aws_instance" "prod" {
  instance_type = var.type
  count         = var.istest == false ? 1 : 0
  ami           = data.aws_ami.amis.id
}
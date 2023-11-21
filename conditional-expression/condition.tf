resource "aws_instance" "dev" {
  ami = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.micro"
  count = var.istest == true ? 1 : 0
}
resource "aws_instance" "prod" {
  ami = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.large"
  count = var.istest == false ? 1 : 0
}
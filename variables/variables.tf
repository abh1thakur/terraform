variable "instancetype" {
  type = list
}
variable "instances" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-east-2 = "t2.large"
  }
}
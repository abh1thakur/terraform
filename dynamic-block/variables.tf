variable "type" {
  type    = string
  default = "t2.micro"
}
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "istest" {
  type    = bool
  default = true
}
variable "sg_ports" {
  type = list
  default = ["80","443","22","21","23"]
}
variable "eip" {
  type = string
  default = "1.1.1.1"
  
}
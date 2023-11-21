variable "instance_type" {
 type = map
 default = {
    default = "t2.micro"
    prod = "t2.large"
    dev = "t3.xlarge"
 }
}
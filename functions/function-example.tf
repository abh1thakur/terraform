resource "aws_instance" "ec2-instance" {
    ami = lookup(var.ami_ids,var.region) # lookup(map, key, default)
    instance_type = var.instance_type
    count = 2
    tags = {
      name = element(var.tags,count.index)
    }
}
module "firstec2" {
    source = "../../modules/ec2"
    instance_type = "t2.large"
}
output "instance_ip" {
 value = module.firstec2.instance_ip  
}
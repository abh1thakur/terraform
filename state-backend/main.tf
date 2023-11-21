# module "ec2" {
#     source = "../terraform-modules/modules/ec2"
# }
resource "time_sleep" "sleep" {
    create_duration = "150s"
  
}
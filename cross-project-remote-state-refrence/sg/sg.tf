data "terraform_remote_state" "eip" {
    backend = "s3"
    config = {
      bucket = "terraform-bak"
      key = "ec2/eip.tfstate"
      region = "us-east-1"
      access_key = ""
      secret_key = ""
    }

}
resource "aws_security_group" "sg" {
    name = "cross_project_reference"
    ingress {
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["${data.terraform_remote_state.eip.outputs.eip_ip}/32"]

    }
  
}
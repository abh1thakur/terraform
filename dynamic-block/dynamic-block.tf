
resource "aws_security_group" "allow_ssh_traffic" {
  name = "all_basic_traffic"
  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
        from_port = port.value
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
  }
}
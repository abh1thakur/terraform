resource "aws_eip" "eip" {
  
}

output "eip_ip" {
    value = aws_eip.eip.public_ip
}
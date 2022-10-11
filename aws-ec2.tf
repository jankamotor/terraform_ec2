resource "aws_instance" "first_ec2" {
    ami           = var.ami-id
    instance_type = var.instance_type
    
    tags     = {
        name = "Web-server-terraform"
    }
    user_data = file("./files/server-script.sh")

    security_groups = [aws_security_group.web_traffic.name]

    network_interface {
      network_interface_id = aws_network_interface.web-eth0.id
      device_index         = 0
  }
}

output "public_ip" {
  value = aws_instance.first_ec2.public_ip
}

resource "aws_instance" "first_ec2" {
    ami           = var.ami-id
    instance_type = var.instance_type
    
    tags     = {
        name = "Web-server-terraform"
    }
    user_data = file("files/server-script.sh")

    security_groups = [aws_security_group.web_traffic.name]
}

output "public_ip" {
  value = aws_instance.first_ec2.public_ip
}

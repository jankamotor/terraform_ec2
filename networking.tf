resource "aws_vpc" "web_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "web-vpc"
  }
}

resource "aws_subnet" "web_subnet" {
  vpc_id            = aws_vpc.web_vpc.id
  cidr_block        = "172.16.10.0/27"
  availability_zone = "us-east-1"

  tags = {
    Name = "web-subnet"
  }
}

resource "aws_network_interface" "web-eth0" {
  subnet_id   = aws_subnet.web_subnet.id
  private_ips = ["172.16.10.7"]

  tags = {
    Name = "web-eth0"
  }
}
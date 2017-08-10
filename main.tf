provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "zestdemoapp" {
  count = 3
  ami = "ami-11716868"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-71ee470b"]
  subnet_id = "subnet-ae0f44d8"
  associate_public_ip_address = true
  tags {
    Name = "consul-client-${count.index}"
  }

}

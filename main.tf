provider "aws" {
  region = "us-east-1"
  profile = "pocrole"
}

resource "aws_instance" "ec2-instance" {
  ami = "ami-0532be01f26a3de55"
  instance_type = "t3a.nano"
  subnet_id = "subnet-0a54e06d228e37fc20"
  vpc_security_group_ids = [ "sg-0255e9a92d037cd32" ]
}

output "ec2-outputs" {
  value = aws_instance.ec2-instance
}
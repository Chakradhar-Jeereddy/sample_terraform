resource "aws_instance" "frontend" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "frontend"
  }
}

variable "sg_id" {}


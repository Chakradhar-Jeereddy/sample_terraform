resource "aws_instance" "frontend" {
#  ami           = "ami-0bb6af715826253bf" # us-west-2
  ami = data.aws_ami.example.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "frontend"
  }
}

variable "sg_id" {}


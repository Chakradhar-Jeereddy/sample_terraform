resource "aws_instance" "frontend" {
  ami           = "ami-0bb6af715826253bf" # us-west-2
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "frontend"
  }
}

output "public_ip" {
  value = aws_instance.frontend.public_ip
}

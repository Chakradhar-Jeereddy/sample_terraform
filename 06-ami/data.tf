data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-7-DevOps-Practice"
  owners      = ["self"]
}

output "ami" {
  value = data.aws_ami.ami.image_id
}
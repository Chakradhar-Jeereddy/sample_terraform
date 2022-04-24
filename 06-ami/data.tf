data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "base-with-ansible"
  owners      = ["self"]
}

output "ami" {
  value = data.aws_ami.ami.image_id
}
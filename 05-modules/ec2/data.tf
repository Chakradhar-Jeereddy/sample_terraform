data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-7-DevOps-Practice"
  owners      = ["self"]
}

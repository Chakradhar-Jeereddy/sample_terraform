variable "sample1" {
  default = "hello"
}

output "sample" {
  value = var.sample1
}

#type of variables
variable "sample2" {
  default = 100
}

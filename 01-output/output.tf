variable "sample1" {
  default = "hello"
}

output "sample1" {
  value = var.sample1
}

#variable type
variable "sample2" {
  type = string
  default = "hello"
}

output "sample2" {
  value = var.sample2
}

variable "sample3" {
  type = number
  default = 100
}

output "sample3" {
  value = var.sample3
}

variable "sample4" {
  type = bool
  default = true
}

output "sample4" {
  value = var.sample4
}
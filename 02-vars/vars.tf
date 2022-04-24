variable "sample1" {
  default = "hello"
}

output "sample1" {
  value = var.sample1
}

#variable type
variable "sample2" {
  type = string
  default = "hello world"
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

#variable buckets
#list, dict

variable "sample5" {
  description = "list"
  default = [
    "hello",
     100,
     false,
     "world"
]
}

output "sample5" {
  value = var.sample5[3]
}

variable "sample6" {
  description = "map"
  default = {
    name = "chakra",
    number = 100,
    boolean = true
  }
}

output "sample6" {
  value = var.sample6["name"]
}

# different ways of inputs to variables
#default = "input", .tfvars, .auto.tfvars, cli, shell env, manual entry

variable "url" {}

output "url" {
  value = var.url
}


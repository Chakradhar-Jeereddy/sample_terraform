terraform {
  backend "s3" {
    bucket = "terraform-chakra"
    key    = "example/terraform.tfstate"
    region = "us-east-1"
  }
}

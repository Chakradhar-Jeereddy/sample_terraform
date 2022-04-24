module "ec2" {
  source = "./ec2"
  sg_id = module.sg.sg_id
}

module "sg" {
  source = "./sg"
}

terraform {
  backend "s3" {
    bucket = "terraform-chakra"
    key    = "example/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
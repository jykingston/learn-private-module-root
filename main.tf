terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/jykingston-hashicorp/s3-webapp/aws"
  version = "1.0.1"
  name   = var.name
  region = var.region
  prefix = var.prefix
}
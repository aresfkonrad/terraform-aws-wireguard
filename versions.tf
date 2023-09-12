terraform {
  required_version = ">= 0.14.10"

  backend "s3" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 3.0"
    }
    template = {
       source = "https://github.com/gxben/terraform-provider-template/releases/download/v2.2.0-m1/terraform-provider-template_2.2.0-m1_darwin_arm64.zip"
    }
  }
}

provider "aws" {
  region = var.region
}

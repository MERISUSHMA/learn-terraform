terraform {
  backend "s3" {
    bucket = "sushma-terraform-state"
    key = "test/terraform.tfstate"
    region = "us-east-1"

  }
}

resource "null_resource" "test" {}
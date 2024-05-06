terraform {
  backend "s3" {
    bucket = "bia-terraform-roddsv"
    key = "terraform.tfstate"
    region = "us-east-1"
    profile = "bia"
  }
}
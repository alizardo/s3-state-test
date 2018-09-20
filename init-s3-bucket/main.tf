provider "aws" {
  region = "eu-west-1"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_s3_bucket" "b" {
  bucket = "deploy-tf-states"
  acl    = "public-read-write"

  tags {
    Name        = "Terraform State Files"
    Environment = "Dev"
  }
}

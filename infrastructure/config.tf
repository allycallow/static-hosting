/*
  Terraform state saved to S3 Bucket
  You need to create the bucket outside of terraform first
  aws s3api create-bucket --bucket ttw-demo-alex --region eu-west-2 --create-bucket-configuration LocationConstraint=eu-west-2
  Can't use variables in terraform backend :(
  if using as a template change bucket name to your own
*/

terraform {
  required_version = "~> v0.12.3"

  # * CONFIG TERRAFORM WORKSPACE
  backend "s3" {
    bucket = "ttw-demo-alex"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "template" {
  version = "~> 2.1"
}

provider "aws" {
  region  = "${var.region}"
  version = "~> 2.7.0"
}

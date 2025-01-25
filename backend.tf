terraform {
  backend "s3" {
    bucket = "buckets3statefilebackup"
    key = "3rd/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
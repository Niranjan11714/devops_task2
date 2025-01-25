provider "aws" {
    region = "us-east-1"
}

module "vpc" { 
    source = "./modules/vpc/"
}

module "ec2_instance" {
    source = "./modules/ec2"
}

resource "aws_s3_bucket" "statebackup" {
    bucket = "buckets3statefilebackup"
}

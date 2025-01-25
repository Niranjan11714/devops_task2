variable "ami_id" {
    description = "ami-id for ec2"
    default = "ami-0e2c8caa4b6378d8c"
}

variable "instance_type" {                     
    description = "for apt env"        
    type = map(string)
    default = {
        "dev" = "t2.micro" 
        "stage" = "t2.medium"
        "prod" = "t2.xlarge" 
    }
}

variable "security_groups" {
    default = ["sg-00bed2fef6922389b"]
}

variable "subnet_id" {
    default = "subnet-0fce504b34afda2c6"
}   
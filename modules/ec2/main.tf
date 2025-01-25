provider "aws" {
    region = "us-east-1"
}

resource "aws_key_pair" "my_kp" { 
    key_name = "my_kp"
    public_key = file("C:/Users/CJ/Desktop/devops_task/my_kp.pub")
}

resource "aws_instance" "task" {
    ami = var.ami_id
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
    key_name = aws_key_pair.my_kp.key_name
    vpc_security_group_ids = var.security_groups /*[module.security_group.websg.id]*/
    subnet_id = var.subnet_id

    connection {
        type = "ssh"
        user = "ubuntu"
        private_key = file("C:/Users/CJ/Desktop/devops_task/my_kp")
        host = self.public_ip
    }

    /*provisioner "file" {
        source = ""
        destination = ""      
    }*/

    provisioner "remote-exec" {
        inline = [
            "sudo apt update && apt upgrade -y", 
            "sudo apt install nginx -y",
        ]
    }
}

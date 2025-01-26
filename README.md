## 1. Prerequisites
Download and install Terraform
```
sudo apt update
sudo apt install -y wget unzip
wget https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip
unzip terraform_1.5.7_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform --version
```


Install AWS CLI:
```
sudo apt install -y awscli
aws --version
```

## 2. Configure AWS CLI
Set up your AWS credentials and default region:
```
aws configure
```
Provide:
Access Key, 
Secret Key, 
Default region (e.g., us-east-1)

## 3. Generate SSH Key
Generate an SSH key pair to use with your EC2 instance:
```
ssh-keygen -t rsa -f /path/where/we/want/my_kp
```
This will create two files:
my_kp (private key), 
my_kp.pub (public key) 
Ensure the public key is referenced in your Terraform configuration.

## 4. Set Up Workspaces
Create Workspaces
```
terraform workspace new dev
terraform workspace new stage
terraform workspace new prod
```

Verify Workspaces
```
terraform workspace list
```

## 5. Commands to Execute
Initialize Terraform
```
terraform init
```
Validate Configuration
```
terraform validate
```

Plan Execution
```
terraform plan
```

Apply Configuration
```
terraform apply
```

Verify Outputs
```
terraform output
```


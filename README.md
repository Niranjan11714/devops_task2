## 1. Prerequisites
Install Terraform
sudo apt update
sudo apt install -y wget unzip
wget https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip
unzip terraform_1.5.7_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform --version

## 2. Install AWS CLI
Download and install AWS CLI:
sudo apt install -y awscli
aws --version

## 3. Configure AWS CLI
Set up your AWS credentials and default region:
aws configure

Provide:
Access Key
Secret Key
Default region (e.g., us-east-1)


## 4. Set Up Workspaces
Create Workspaces
terraform workspace new dev
terraform workspace new stage
terraform workspace new prod

Verify Workspaces
terraform workspace list


## 5. Commands to Execute
Initialize Terraform
terraform init

Validate Configuration
terraform validate

Plan Execution
terraform plan

Apply Configuration
terraform apply

Verify Outputs
terraform output



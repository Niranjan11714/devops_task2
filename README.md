# devops_task
1. Prerequisites

Install Terraform: Download and install Terraform from Terraform's official site.
sudo apt update
sudo apt install -y wget unzip
wget https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip
unzip terraform_1.5.7_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform --version

Install AWS CLI: Download and install AWS CLI from AWS CLI official site.
sudo apt install -y awscli
aws --version
AWS Configuration: Set up your AWS credentials and default region.
aws configure
Provide:
Access Key
Secret Key
Default region (e.g., us-east-1)

2. Set Up Workspaces
Workspaces allow you to manage different environments (e.g., dev, stage, prod).
terraform workspace new dev
terraform workspace new stage
terraform workspace new prod
Verify workspaces:
terraform workspace list

3. Directory Structure
Here’s the project structure:

tree
├── main.tf
├── backend.tf
├── outputs.tf
├── variables.tf
├── modules/
│   ├── ec2/
│   │   ├── ec2.tf
│   ├── vpc/
│       ├── vpc.tf

Commands to Execute
Initialize Terraform:
terraform init

Validate Configuration:
terraform validate

Plan Execution:
terraform plan

Apply Configuration:
terraform apply

Verify Outputs:
terraform output

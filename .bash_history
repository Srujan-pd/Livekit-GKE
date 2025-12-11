ls
clear
sudo apt update
sudo apt install -y git
git --version
sudo apt update
sudo apt install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com bookworm main" |   sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install -y terraform
terraform version
clear
mkdir T1
cd T1/
clear
vi main.tf
vi variable.tf
vi terraform.tfvar
terraform init
terraform fmt'

terraform fmt
terraform validate
terraform plan -var-file=terraform.tfvar
terraform apply -var-file=terraform.tfvar
vi main.tf
vi terraform.tfvar
gcloud iam service-accounts create terraform-sa   --display-name="Terraform Service Account"
vi variable.tf 
terraform apply -var-file=terraform.tfvar
vi main.tf
terraform apply -var-file=terraform.tfvar
vi terraform.tfvar 
terraform apply -var-file=terraform.tfvar
ls
vi main.tf 
vi variable.tf 
vi terraform.tfvar 
terraform fmt
terraform validate
terraform plan -var-file="terraform.tfvars"
ls
terraform plan -var-file=terraform.tfvars
rm terraform.tfvar terraform.tfvars
ls
vi terraform.tfvars
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
ls
vi terraform.tfvars 
terraform apply -var-file="terraform.tfvars"
ls
cd T1/
terraform apply -var-file="terraform.tfvars"
ls
pwd
mv terraform.tfvars /home/srujan_sane/
ls
cd ..
ls
cd T1/
git init
git add .
git commit -m "Terraform code for VM"
git config --global user.email srujan.sane@primisdigital.com
git config --global user.name Srujan-pd
git commit -m "Terraform code for VM"
git status
git remote add origin https://github.com/Srujan-pd/Terraform-codes.git
git push -u master
git push -u origin master
git branch
git checkout -b main
git branch
git checkout master
ls -a
git reset HEAD^
git reset .terraform .terraform.lock.hcl
git commit -m "clean commit"
git reset --hard HEAD^
git log --oneline
git rm --cached .terraform .terraform.lock.hcl
git reset
git rm -r --cached .terraform
git rm --cached .terraform.lock.hcl
git commit -m "Remove .terraform directory and lock file from repo"
git push origin master
terraform workspace new dev
terraform workspace new prod
terraform workspace list
terraform workspace select dev
terraform workspace select default
cd T
cd ..
mkdir Terraform
cd Terraform/
mkdir modules
cd modules/
mkdir secure_bucket
cd secure_bucket/
vi main.tf
vi variables.tf
vi outputs.tf
mkdir env
cd env/
vi dev.tfvars
vi prod.tfvars
cd ..
vi main.tf
vi variable.tf
ls
pwd
mv secure_bucket /home/srujan_sane/Terraform/
clear
ls
cd ..
ls
mv secure_bucket /home/srujan_sane/Terraform/modules/
cd ..
ls
cd Terraform/
ls
cd modules/
cd ..
cd T1/
ls
cd ..
cd Terraform/
ls
cd modules/
ls
mv main.tf variable.tf //home/srujan_sane/Terraform
ls
cd secure_bucket/
ls
mv env /home/srujan_sane/Terraform/
ls
cd ..
ls
cd ..
ls

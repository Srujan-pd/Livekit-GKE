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
terraform workspace select dev
terraform workspace new dev
terraform new workspace prod
terraform new workspace new prod
terraform workspace new prod
terraform workspace select dev
terraform apply -var-file=env/dev.tfvars
ls
cd Terraform/
ls
terraform workspace list
terraform workspace new dev
terraform workspace new prod
ls
terraform apply -var-file=env/dev.tfvars
terraform init
terraform apply -var-file=env/dev.tfvars
vi variable.tf 
cd env/
ls
vi dev.tfvars 
vi prod.tfvars 
terraform apply -var-file=env/dev.tfvars
cd ..
terraform apply -var-file=env/dev.tfvars
vi modules/secure_bucket/main.tf
terraform apply -var-file=env/dev.tfvars
vi modules/secure_bucket/main.tf
terraform apply -var-file=env/dev.tfvars
terraform workspace select prod
terraform apply -var-file=env/prod.tfvars
ls
git init
git add env main.tf modules variable.tf 
git status
git commit -m "terraform module for secure bucket"
git branch -M main
git remote add origin https://github.com/PrimisDigital-repo/poc_devops.git
git push -u origin main
terraform apply -var-file=env/prod.tfvars
terraform workspace select dev
cd ..
ls
mkdir VPC
cd VPC/
cd ..
ls
cd Terraform/
ls
cp  env //home/srujan_sane/VPC/
cp -r  env /home/srujan_sane/VPC/
cp -r  modules /home/srujan_sane/VPC/
cp main.tf /home/srujan_sane//VPC/
cp variable.tf /home/srujan_sane//VPC/
cd ..
cd VPC/
ls
rm -rf modules/
rm -rf env/
vi main.tf 
rm variable.tf 
vi variable.tf
vi dev.tfvars
cd ..
ls
cd T1/
ls
terraform destroy -var-file="terraform.tfvars"
cat main.tf 
ls
terraform destroy
cat variable.tf 
ls
cat terraform.tfstate
terraform state rm google_compute_instance.vm
clear
ls
cd ..
ls
terraform destroy -var-file="terraform.tfvars"
cd T1/
ls
rm -rf terraform.tfstate terraform.tfstate.1765445916.backup terraform.tfstate.backup terraform.tfstate.d
ls
cd ..
ls
git init
cd VPC/
ls
cd ..
ls
git add Terraform/
vi Terraform/
cd Terraform/
;s
ls
terraform destroy -var-file=env/prod.tfvars -auto-approve
terraform destroy -var-file=env/dev.tfvars -auto-approve
terraform workspace show
terraform workspace list
terraform workspace select default
terraform state list
terraform workspace select default
terraform state list
terraform workspace select dev
terraform state list
terraform workspace select prod
terraform state list
terraform workspace select prod
terraform destroy -var-file=env/prod.tfvars
ls
rm -rf terraform.tfstate.d
ls
cd ..
ls
rm -rf terraform.tfstate.d
ls
git init
git add .
git commit -m "Terraform tasks"
git rebase
git reset --soft HEAD~1
git reset
git status
ls -a
git rm -r --cached .bash_history .bash_logout .bashrc .profile .config .lesshst .vim .viminfo .terraform.d
git stauts
git status
ls -a
git rm -r --cached .
git status
ls
git add T1 Terraform VPS terraform.tfvars
git add T1 Terraform VPC terraform.tfvars
git status
git rm -f T1
git rm -f Terraform
rm -rf .git/modules/T1
rm -rf .git/modules/Terraform
git add T1
git status
git add T1 Terraform
ls -a
rm .gitmodules
git rm -r --cached T1 Terraform
rm -rf .git/modules/T1
rm -rf .git/modules/Terraform
find T1 -maxdepth 1 -name ".git" -exec rm -rf {} \;
find Terraform -maxdepth 1 -name ".git" -exec rm -rf {} \;
git add T1 Terraform
git status
ls
git commit -m "Terraform task"
git status
git branch -M main
git remote add origin https://github.com/PrimisDigital-repo/poc_devops.git
git push -u origin main
sudo apt install git-filter-repo
git filter-repo --path .terraform --invert-paths
echo ".terraform/" >> .gitignore
git lfs track
git rev-list --objects --all | grep -i terraform-provider
git push origin main --force
echo ".terraform/" >> .gitignore
git rm -r --cached .terraform/
git add .gitignore
git commit -m "Ignore .terraform directory"
git filter-repo --path .terraform --invert-paths
git filter-repo --path .terraform --invert-paths --force
git push origin main --force
T1/.terraform/providers/...
Terraform/.terraform/providers/...
git rev-list --objects --all | grep -i terraform-provider
T1/.terraform/
Terraform/.terraform/
git filter-repo   --path T1/.terraform   --path Terraform/.terraform   --invert-paths --force
git rev-list --objects --all | grep -i terraform-provider
git push origin main --force
ls
cd VPC/
ls
terraform apply -var-file=dev.tfvars
terraform init
terraform plan -var-file=dev.tfvars
rm main.tf 
vi main.tf
terraform plan -var-file=dev.tfvars
vi dev.tfvars 
vi variable.tf 
cat main.tf 
cat variable.tf 
cat dev.tfvars 
vi main.tf 
terraform init
terraform plan -var-file=dev.tfvars
terraform apply -var-file=dev.tfvars
clear
ls
mkdir action
rm -rf action/
mkdir gitaction
cd gitaction/
vi ci.yml
ls
clear
cd ..
ls
cd VPC/
clear
ls
terraform destroy -var-file= dev.tfvars 
terraform destroy -var-file=dev.tfvars
sudo apt-get update
sudo apt-get install -y stress
stress --cpu 4 --timeout 300
stress --cpu 8 --timeout 300000
cd ..
ls
cd gitaction/
ls
rm ci.yml 
vi package.json
vi app.js
vi.github/workflows/build.yml
vi .github/workflows/build.yml
ls
mkdir iam
cd iam/
terraform {
vi main.tf
clear
ls
cd iam/
clear
ls
vi main.tf
ls
vi variable.tf
vi terraform.tfvar
ls
vi terraform.tfvars
terraform init
terraform plan
terraform apply
ls
cd iam/
ls
terraform plan
terraform apply
ls
vi main.tf 
vi variable.tf 
vi terraform.tfvars 
terraform plan
terraform apply
vi terraform.tfvars 
terraform apply -autoapprove
terraform apply -auto-approve
vi terraform.tfvars 
terraform apply -auto-approve
cat main.tf 
cat variable.tf 
cat terraform.tfvars 
vi terraform.tfvars 
terraform apply -auto-approve
vi terraform.tfvars 
terraform apply -auto-approve
vi terraform.tfvars 
terraform apply -auto-approve
vi terraform.tfvars 
terraform apply -auto-approve
gcloud resource-manager folders list
vi main.tf 
vi terraform.tfvars 
vi variable.tf 
terraform apply -auto-approve
gcloud resource-manager folders list
gcloud organizations list
gcloud auth application-default login
ls
mkdir VM
cd VM
vi main.tf
cd ..
mkdir bucket
cd bucket/
vi main.tf
ls
terraform init
clear
ls
cd ..
ls
cd V
cd VM
vi main.tf 
rm main.tf 
vi main.tf
vi variable.tf
cd VM
ls
cd ..
cd bucket/
ls
cat main.tf 
vi main.tf 
rm main.tf 
vi main.tf
vi variable.tf
vi output.tf
vi variable.tf 
ls
rm main.tf output.tf variable.tf 
vi main.tf
vi variable.tf
ls
cd VM
ls
terraform init
terraform plan
cat main.tf 
vi variable.tf
vi terraform.tfvars
vi main.tf 
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
ls
terraform destroy -var-file="terraform.tfvars"
ls
ls -a
echo "terraform.tfstate" >> .gitignore
echo "terraform.tfstate.backup" >> .gitignore
echo "terraform.tfstate.d/" >> .gitignore
echo "terraform.tfvars" >> .gitignore
echo ".terraform/" >> .gitignore
cat .gitignore
git init
git add main.tf variable.tf 
cd ..
ls
git init
git add VM
ls
git add VM
git init
git status
cd VM
ls
pwd
ls
cat main.tf 
ls
cat variable.tf 
cd ..
ls
cd bucket/
ls
rm main.tf 
vi main.tf
vi variable.tf
vi output.tf
cat main.tf 
ls
rm main.tf output.tf variable.tf 
vi main.tf
vi variable.tf
vi terraform.tfvars
terraform init
ls
vi main.tf 
rm main.tf 
rm terraform.tfvars 
rm variable.tf 
vi main.tf
vi variable.tf
ls
vi terraform.tfvars
terraform init
terraform plan -var-file=terraform.tfvars
rm main.tf 
vi main.tf
terraform plan -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars -auto-approve
ls 
ls
cd bucket/
ls
terraform plan -var-file= terraform.tfvars 
terraform init
terraform plan -var-file= terraform.tfvars
terraform plan -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars
ls
cd bucket/
ls
terraform plan -var-file=terraform.tfvars
terraform plan -var-file=terraform.tfvars -auto-aprove
terraform plan -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars
ls
cd bucket/
ls
cd ..
ls
ls -l
mkdir sql
cd sql/
vi main.tf
ls
cd sql/
ls
ls
code ~/.ssh/config
gcloud compute config-ssh
code ~/.ssh/config
nano ~/.ssh/config
ls
history

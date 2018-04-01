#usage
#Populate feed.tfvars with required variables
terraform init
terraform plan -var-file feed.tfvars
terraform apply -var-file feed.tfvars
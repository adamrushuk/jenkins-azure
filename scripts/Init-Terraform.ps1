# Terraform tasks
terraform version

# Change into TF folder location
Push-Location -Path .\terraform

# Download required TF resources
terraform init

# Revert to previous folder location
Pop-Location
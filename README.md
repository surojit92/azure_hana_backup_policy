# azure_hana_backup_policy
Hana Backup Policy Terraform

This Backup Policy is written using Terraform Modules. 

This is for Azure Workload Hana Database backup Policy. It will create a policy for Weekly Full Backup, Daily Incremenatl Backup and every 15 minutes Log Backup with retention period.

Terraform Commands:

terraform init

terraform plan -var-file="./config/example.tfvars"

terraform apply -var-file="./config/example.tfvars"

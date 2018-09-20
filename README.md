> This repo is a small demo to persist terraform state files on s3. You need to create a user on  AWS with s3 read/write bucket and object permissions.

### Create bucket
```console
cd init-s3-bucket
terraform init -var-file="yourvars.tfvars"
terraform apply
```

### Run two-tier tf script (back to initial folder)
#### First time you need to specify that there's no remote configurations
```console
terraform init -reconfigure -var-file="yourvars.tfvars"
terraform apply
```
#### Check your terraform state file
```console
terraform init -var-file="yourvars.tfvars"
terraform state pull
```

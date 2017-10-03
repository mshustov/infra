# infra

## spin up
- build images with Packer.
```
# dry run
packer validate -var-file=packer/variables.json  packer/app.json
# build app, run separate for db
packer build -var-file=packer/variables.json  packer/app.json
```
we configured images with name and family. Family is used to reference
images for usage in the next step

- spin up environement in GCE with Terraform. go to needed environement folder and run
```
# dry run
terraform plan
# run
terraform apply
```
Terraform prints output vairables (in our case that are external/internal ip addresses) for usage on the next step

- We setup dynamic variables (ip addresses, in our case) for specific env in appopriate inventory file `environement/{name}/hosts`
The default env is defined in config as `stage`.

To setup image:
```
# dry run
ansible-playbook site.yml --check
# run
ansible-playbook site.yml
```
To specify configuration change the corresponging role in `roles` folder.

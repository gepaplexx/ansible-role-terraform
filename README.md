# Ansible Role: terraform

![MIT](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/gepaplexx/ansible-role-terraform/Main?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/gepaplexx/ansible-role-terraform?style=flat-square)
![GitHub Release Date](https://img.shields.io/github/release-date/gepaplexx/ansible-role-terraform?style=flat-square)
![Maintenance](https://img.shields.io/maintenance/yes/2022?style=flat-square)

Create infrastructure with terraform. The role can deploy any terraform plan provided by `terraform_repo_url` and customize the variables used by terraform via `terraform_variables`.

Variable Name | Default Value | Description
------------ | ------------- | -------------
terraform_cache_valid_time | 3600 | Cache update time for apt module.
terraform_repo_branch | | Specify the repo branch containing the terraform plan.
terraform_repo_dir | | Specify the repo url containing the terraform plan.
terraform_repo_url | | Specify the target directory to clone the terraform repo to.
terraform_state | present | Create or destroy terraform resource by setting the terraform_state.
terraform_variables | | provide additional variables to terraform which can be used by the terraform plan.

## License

MIT

## Contributions

- [@ckaserer](https://github.com/ckaserer)

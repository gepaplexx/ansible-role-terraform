# Ansible Role: terraform

![MIT](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/gepaplexx/ansible-role-terraform/Main?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/gepaplexx/ansible-role-terraform?style=flat-square)
![GitHub Release Date](https://img.shields.io/github/release-date/gepaplexx/ansible-role-terraform?style=flat-square)
![Maintenance](https://img.shields.io/maintenance/yes/2022?style=flat-square)

Bootstrap a new spoke network for gepaplexx. Terraform creates a network, a folder and a single ubuntu vm. In a later step the vm will be configured as dhcp server. Once the dhcp server is up and running we create the remaining resources with a seperate terraform plan since all other resources depend on the dhcp server.

## Role Variables

Variable Name | Default Value | Description
------------ | ------------- | -------------
terraform_cache_valid_time | 3600 | Cache update time for apt module.
terraform_repo_dir | | Specify the repo url containing the terraform plan.
terraform_repo_url | | Specify the target directory to clone the terraform repo to.
terraform_state | present | Create or destroy terraform resource by setting the terraform_state.
terraform_variables | | provide additional variables to terraform which can be used by the terraform plan.

## License

MIT

## Author Information

This role was created in 2021 by [Clemens Kaserer](https://www.ckaserer.dev/).

Contributions by:

- [@ckaserer](https://github.com/ckaserer)

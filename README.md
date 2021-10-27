# Ansible Role: terraform_spoke_network

![MIT](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/gepaplexx/ansible-role-terraform-spoke-network/Main?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/gepaplexx/ansible-role-terraform-spoke-network?style=flat-square)
![GitHub Release Date](https://img.shields.io/github/release-date/gepaplexx/ansible-role-terraform-spoke-network?style=flat-square)
![Maintenance](https://img.shields.io/maintenance/yes/2022?style=flat-square)

Installing terraform_spoke_network in Kubernetes.

## Role Variables

Variable Name | Default Value | Description
------------ | ------------- | -------------
terraform_spoke_network_cache_valid_time | 3600 | Cache update time for apt module.
terraform_spoke_network_namespace | default | Specify the kubernetes namespace to install resources to.

## Role Usage Examples

Example for installing terraform_spoke_network in a dedicated namespace `terraform_spoke_network`.

```yaml
- hosts: all
  roles:
  - role: gepaplexx.terraform_spoke_network
    vars:
      terraform_spoke_network_namespace: terraform_spoke_network
```

## License

MIT

## Author Information

This role was created in 2021 by [Clemens Kaserer](https://www.ckaserer.dev/).

Contributions by:

- [@ckaserer](https://github.com/ckaserer)

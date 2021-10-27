terraform {
  required_version = ">=0.14.3"
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = "3.0.0"
    }
  }
}

provider "tls" {}

# Configure the VMware vSphere Provider
provider "vsphere" {
  # user           = "${var.vmware_user}"
  # password       = "${var.vmware_password}"
  # vsphere_server = "${var.vmware_host}"

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {
  name = "${var.datacenter}"
}

resource "vsphere_folder" "folder" {
  path = "TERRAFORM"
  type = "vm"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

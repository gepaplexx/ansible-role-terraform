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
  # if you have a self-signed cert
  allow_unverified_ssl = true
}

resource "vsphere_folder" "folder" {
  path = "TERRAFORM"
  type = "vm"
  #datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

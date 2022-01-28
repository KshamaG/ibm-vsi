# Create three VSIs in dal09. Hourly billed with public network connection.

data "ibm_compute_ssh_key" "ssh_key" {
  label = var.ssh_key
}

data "ibm_security_group" "allow_http" {
  name = "allow_http"
}

data "ibm_security_group" "allow_outbound" {
  name = "allow_outbound"
}

data "ibm_security_group" "allow_ssh" {
  name = "allow_ssh"
}

resource "ibm_compute_vm_instance" "vm1" {
  hostname             = var.hostname1
  domain               = var.domain1
  tags                 = var.tags1
  os_reference_code    = "CENTOS_7_64"
  datacenter           = var.datacenter
  network_speed        = 100
  hourly_billing       = true
  private_network_only = false
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false
  ssh_key_ids          = [data.ibm_compute_ssh_key.ssh_key.id]
  private_security_group_ids = [data.ibm_security_group.allow_http.id, data.ibm_security_group.allow_outbound.id, data.ibm_security_group.allow_ssh.id]

}

resource "ibm_compute_vm_instance" "vm2" {
  hostname             = var.hostname2
  domain               = var.domain2
  tags                 = var.tags2
  os_reference_code    = "CENTOS_7_64"
  datacenter           = var.datacenter
  network_speed        = 100
  hourly_billing       = true
  private_network_only = false
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false
  ssh_key_ids          = [data.ibm_compute_ssh_key.ssh_key.id]
  private_security_group_ids = [data.ibm_security_group.allow_http.id, data.ibm_security_group.allow_outbound.id, data.ibm_security_group.allow_ssh.id]
}

resource "ibm_compute_vm_instance" "vm3" {
  hostname             = var.hostname3
  domain               = var.domain3
  tags                 = var.tags3
  os_reference_code    = "CENTOS_7_64"
  datacenter           = var.datacenter
  network_speed        = 100
  hourly_billing       = true
  private_network_only = false
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false
  ssh_key_ids          = [data.ibm_compute_ssh_key.ssh_key.id]
  private_security_group_ids = [data.ibm_security_group.allow_http.id, data.ibm_security_group.allow_outbound.id, data.ibm_security_group.allow_ssh.id]
}

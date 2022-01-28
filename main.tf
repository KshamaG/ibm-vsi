# Create three VSIs in dal09. Hourly billed with public network connection.

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
}

# Create single VSI in dal09. Hourly billed with private network connection only.

resource "ibm_compute_vm_instance" "vm1" {
  hostname             = var.hostname
  domain               = var.domain
  os_reference_code    = "CENTOS_7_64"
  datacenter           = "dal09"
  network_speed        = 100
  hourly_billing       = true
  private_network_only = true
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false
}

# test
output "resource_cloud" {
  value = {
    "is_resource" = "true"
    "resource_controller_url" = ""
    "resource_icon_url" = "https://globalcatalog.test.cloud.ibm.com/api/v1/1082e7d2-5e2f-0a11-a3bc-f88a8e1931fc/artifacts/cache/8c6189a76c7d346f6e807aaffb3bf643-public/terraform.svg"
    "resource_id" = "42381608-4af0-f4dc-363d-a3a79c17d927"
    "resource_name" = "teste-tadeu25"
  }
}

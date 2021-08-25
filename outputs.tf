
output "private_vlan_id_vm1" {
  value       = "${ibm_compute_vm_instance.vm1.private_vlan_id}"
  description = "vm1 vsi private vlan id"
}

output "public_vlan_id_vm1" {
  value       = "${ibm_compute_vm_instance.vm1.public_vlan_id}"
  description = "vm1 vsi private vlan id"
}

output "ipv4_address_private_vm1" {
  value       = "${ibm_compute_vm_instance.vm1.ipv4_address_private}"
  description = "vm1 vsi ip4 private address"
}

output "ipv4_address_public_vm1" {
  value       = "${ibm_compute_vm_instance.vm1.ipv4_address}"
  description = "vm1 vsi ip4 public address"
}

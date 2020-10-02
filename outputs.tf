output "private_vlan_id" {
  value       = "${ibm_compute_vm_instance.vm1.private_vlan_id}"
  description = "vsi private vlan id"
}

output "ipv4_address_private" {
  value       = "${ibm_compute_vm_instance.vm1.ipv4_address_private}"
  description = "vsi ip4 private address"
}
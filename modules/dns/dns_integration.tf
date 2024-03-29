#### HA Infra variables.

resource "local_file" "ha_ansible_dns-vars" {
  content = <<-DOC
---
#Ansible vars_file containing variable values passed from Terraform.
#Generated by "terraform plan&apply" command.

# DNS variables
domain_name: "${var.DOMAIN_NAME}"
cname_ascs: "${var.ASCS_VIRT_HOSTNAME}"
cname_ers: "${var.ERS_VIRT_HOSTNAME}"
cname_hana: "${var.HANA_VIRT_HOSTNAME}"
...
    DOC
  filename = "ansible/dns-vars.yml"
}
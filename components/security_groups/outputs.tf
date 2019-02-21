output "linux_security_id" {
  value = "${module.security_groups.linux_security_id}"
}

output "common_security_id" {
  value = "${module.security_groups.common_security_id}"
}

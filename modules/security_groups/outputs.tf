output "linux_security_id" {
  value = "${aws_security_group.linux_servers.id}"
}

output "common_security_id" {
  value = "${aws_security_group.common.id}"
}

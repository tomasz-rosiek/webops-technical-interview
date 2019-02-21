output "private_ips" {
  value = "${module.linux_server.private_ips}"
}

output "public_ips" {
  value = "${module.linux_server.public_ips}"
}

output "instance_ids" {
  value = "${module.linux_server.instance_ids}"
}

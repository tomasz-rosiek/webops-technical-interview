output "public_ips" {
  value = ["${aws_instance.centos.*.public_ip}"]
}

output "private_ips" {
  value = ["${aws_instance.centos.*.private_ip}"]
}

output "instance_ids" {
  value = ["${aws_instance.centos.*.id}"]
}

output "availability_zones" {
  value = ["${aws_instance.centos.*.availability_zone}"]
}

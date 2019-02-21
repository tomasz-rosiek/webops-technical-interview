data "template_file" "cloudconfig" {
  count    = "${var.count}"
  template = "${file("${path.module}/resources/cloud-config.yml")}"

  vars {
    authorized_key_root = "${var.authorized_key_root}"
    hostname            = "${var.environment}${var.role_name}${count.index + 1}"
  }
}

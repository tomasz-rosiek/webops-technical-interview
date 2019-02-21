resource "aws_instance" "centos" {
  count         = "${var.count}"
  ami           = "${data.aws_ami.centos.id}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = "${var.public_ip_false}"

  vpc_security_group_ids  = ["${var.security_group_ids}"]
  subnet_id               = "${var.subnet_id[0]}"
  user_data               = "${element("${data.template_file.cloudconfig.*.rendered}","${count.index}")}"
  disable_api_termination = "${var.termination}"

  tags {
    Name        = "${var.role_name}-${count.index + 1}"
    role        = "${var.role_name}"
    environment = "${var.environment}"
  }

  root_block_device {
    volume_size           = "${var.root_volume_size}"
    delete_on_termination = true
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes        = ["user_data", "associate_public_ip_address"]
  }
}

resource "null_resource" "hostname_file" {
  count = "${var.count}"

  triggers {
    host_change     = "${element(aws_instance.centos.*.id,count.index)}"
    hostname_change = "${var.environment}-${var.role_name}-${count.index + 1}"
  }

  connection {
    user        = "root"
    private_key = "${var.key_private_root}"
    host        = "${element(aws_instance.centos.*.public_ip,count.index)}"
  }
}

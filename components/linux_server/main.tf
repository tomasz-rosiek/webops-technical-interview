module "linux_server" {
  source              = "./../../modules/aws_centos"
  count               = "${var.count}"
  environment         = "${terraform.env}"
  role_name           = "${var.role_name}"
  vpc_id              = "${data.terraform_remote_state.vpc.vpc_id}"
  subnet_id           = "${data.terraform_remote_state.vpc.subnet_id}"
  allowed_cidr_blocks = "${var.allowed_cidr_blocks}"
  key_name            = "${var.key_name}"
  instance_type       = "${var.server_instance_type}"
  root_volume_size    = "${var.root_volume_size}"
  public_ip_false     = "${var.public_ip_false}"
  key_private_root    = "${file("../../secret/keypair1.pem")}"
  authorized_key_root = "${file("../../secret/keypair1.pub")}"
  security_group_ids  = ["${data.terraform_remote_state.security.linux_security_id}", "${data.terraform_remote_state.security.common_security_id}"]
}

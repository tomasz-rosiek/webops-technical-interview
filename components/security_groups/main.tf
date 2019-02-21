module "security_groups" {
  source              = "./../../modules/security_groups"
  environment         = "${var.environment}"
  vpc_id              = "${data.terraform_remote_state.vpc.vpc_id[0]}"
  allowed_cidr_blocks = "${var.allowed_cidr_blocks}"
}

module "vpc" {
  source         = "./../../modules/aws_vpc"
  vpc_cidr_block = "${var.vpc_cidr_block}"
}

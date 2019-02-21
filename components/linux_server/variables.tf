# Core ####################################################

# The environment to tag resources with
variable "environment" {
  default = "sandbox"
}

# AWS region
variable "aws_region" {}

# Server ##################################################

variable "count" {
  default = "1"
}

variable "server_instance_type" {}

variable "allowed_cidr_blocks" {
  type = "list"
}

# Security ################################################

variable "key_name" {}

# Networking ##############################################

variable "public_ip_false" {
  default = "false"
}

# storage #################################################

variable "root_volume_size" {}

variable "role_name" {}

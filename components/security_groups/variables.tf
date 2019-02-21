# Core ##################################################

# The environment to tag resources with
variable "environment" {}

# AWS region
variable "aws_region" {}

# Networking #############################################

# Any ip address ranges which ephemeral server/s are on
variable "allowed_cidr_blocks" {
  type = "string"
}

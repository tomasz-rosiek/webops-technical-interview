# The environment to tag resources with
variable "environment" {}

# The VPC to add instances to.
variable "vpc_id" {}

# A list of IP blocks external to AWS. The security group will be configured
# to allow these IP ranges access to extra ports such as RDP.
variable "allowed_cidr_blocks" {
  type = "list"
}

# The environment to tag resources with
variable "environment" {}

# The role the instance will serve. Used when naming and tagging the instance.
variable "role_name" {}

# The number of instances to create.
variable "count" {
  default = 1
}

# The type of instance to use.
variable "instance_type" {
  default = "t2.micro"
}

# The size of the hard disk to use for the OS in GB.
variable "root_volume_size" {
  default = "8"
}

# The name of the keypair to attach to the instances.
variable "key_name" {}

# The public ssh key thumbprint. Passed into the cloud config to configure
# user accounts on the instances.
variable "authorized_key_root" {}

# The private key used to connect to the instances for configuration
variable "key_private_root" {}

# A list of IP blocks external to AWS. The security group will be configured
# to allow these IP ranges access to extra ports.
variable "allowed_cidr_blocks" {
  type = "list"
}

variable "subnet_id" {
  type = "list"
}

variable "security_group_ids" {
  type = "list"
}

# Termination protection
variable "termination" {
  default = "false"
}

#whether or not a public IP should be attached to the server
variable public_ip_false {
  default = false
}

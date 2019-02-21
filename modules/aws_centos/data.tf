# data "aws_ami" "centos" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["CentOS Linux 7*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["679593333241"]
# }

data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

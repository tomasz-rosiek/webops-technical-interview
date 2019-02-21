#########
# group #
#########

resource "aws_security_group" "linux_servers" {
  name        = "${var.environment}_interviewtest_linux"
  description = "interview test - linux security group"
  vpc_id      = "${var.vpc_id}"

  tags {
    Name        = "${var.environment}_interviewtest_linux"
    environment = "${var.environment}"
  }
}

#########
# rules #
#########

resource "aws_security_group_rule" "ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "TCP"
  cidr_blocks       = ["${compact(var.allowed_cidr_blocks)}"]
  security_group_id = "${aws_security_group.linux_servers.id}"
}

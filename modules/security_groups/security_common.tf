#########
# group #
#########

resource "aws_security_group" "common" {
  name        = "${var.environment}_interviewtest_common"
  description = "interview test - common security group"
  vpc_id      = "${var.vpc_id}"

  tags {
    Name        = "${var.environment}_interviewtest_common"
    environment = "${var.environment}"
  }
}

#########
# rules #
#########

resource "aws_security_group_rule" "out" {
  # Allow all outgoing traffic
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.common.id}"
}

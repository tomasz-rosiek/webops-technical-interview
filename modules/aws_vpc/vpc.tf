# AWS VPC module. Creates a private network in AWS.

resource "aws_vpc" "interviewtest" {
  cidr_block = "${var.vpc_cidr_block}"

  tags {
    Name = "interviewtest"
  }
}

resource "aws_subnet" "interviewtest" {
  vpc_id     = "${aws_vpc.interviewtest.id}"
  cidr_block = "10.0.1.0/24"

  tags {
    Name = "interviewtest"
  }
}

resource "aws_internet_gateway" "interviewtest" {
  vpc_id = "${aws_vpc.interviewtest.id}"

  tags {
    Name = "interviewtest"
  }
}

resource "aws_route_table" "interviewtest" {
  vpc_id = "${aws_vpc.interviewtest.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.interviewtest.id}"
  }

  tags {
    Name = "interviewtest"
  }
}

resource "aws_main_route_table_association" "interviewtest" {
  vpc_id         = "${aws_vpc.interviewtest.id}"
  route_table_id = "${aws_route_table.interviewtest.id}"
}

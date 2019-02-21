output "vpc_id" {
  value = ["${aws_vpc.interviewtest.id}"]
}

output "subnet_id" {
  value = ["${aws_subnet.interviewtest.id}"]
}

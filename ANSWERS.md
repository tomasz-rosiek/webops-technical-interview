# Note for the interviewer
This exercise will only run in the sandbox account of HMRC. With that in mind, please ensure the laptop that is being used for the test is configured in advance to look at sandbox. You will also need valid credentials in the ~/.aws/credentials file of the machine, if they are not already present, to which you have access to the MFA. 

Remember to delete this from the repo before giving them the test.

# ANSWERS

## Task 1
The provider name in the VPC component has been changed from "aws" to "wibble". The interviewee will get a clear message stating this, and have the other components to reference what it should be, even if they don't actually know.

## Task 2
The port number in the security group module for aws is 99, when it should be 22. This is to test understanding of basic networking, and troubleshooting skills when the error is a bit less explicit.

## Task 3
In the module for aws_centos, the variables.tf file is missing:

variable "vpc_id" {}

In the component linux_server, the brackets have been removed from:

allowed_cidr_blocks = ["163.171.34.18/32"]

causing terraform to see the type as incorrect.

## Bonus
I have named the module "aws_centos" but then used the ubuntu ami. This is asked as to test knowledge across distros, plus a more unusual troubleshooting scenario than standard Terraform.
# Welcome to the HMRC infrastructure live coding test - Terraform
This is designed as a paired coding exercise with your interviewer, in which you will attempt to spin up an instance of linux in AWS using terraform.

You are allowed full use of Google, and to ask questions of the interviewer, who may also offer advice as if he were a colleague. You will not be judged negatively for looking things up, checking syntax online etc. You can behave as if it were a normal day in the office.

# Time allowed: 30 minutes. Don't worry if you can't complete them all, it's designed to be too long.

#Tasks

## Task 1:
Take a moment to have a quick look at the file structure of this repo. You will see it is layed out in a standard manner, with components calling modules. There are three components, a linux server (EC2 instance), security groups and a vpc. Briefly tell your interviewer what each of these components are for.

Using the command line, browse to the VPC component.  Plan the component to confirm it will spin up what you want, and when you are happy, attempt to actually spin up the component. 

Oh no! You will find this has not worked. Your first task is to find out why the VPC component is broken, fix it and (after confirming it is OK with your interviewer) apply it.

## Task 2:
If you have completed task 1, you will now have a working VPC. The second task is to add security groups. 
Using the command line browse to the security groups component. The purpose of these security groups is to allow a user to connect in to any EC2 instance they are attached to, but despite appearing to function, when an engineer spins up the groups and tries to SSH to his machine he receives "connection refused".

Take a look at the config, and make the change you believe is required to fix this problem. Once you have made the change, plan and apply the security groups component.

## Task 3:
You have now got a VPC with two security groups in it. The final task is spin up an EC2 instance that into this VPC, that will use both these security groups.
There are multiple things wrong with this instance, that will require planning and troubleshooting. 

Once you believe the problems are fixed, attempt to apply the configuration and spin up a machine.

##Bonus (if you have time):
The instance spun up by "aws_centos" module only ever seems to work with apt commands, not with yum. Your boss asks you to fix this. Without actually having to fix this, indicate to your interviewer where the problem might be.
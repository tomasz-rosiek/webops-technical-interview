# Create the AWS provider, used to interact with AWS
# https://www.terraform.io/docs/providers/aws/index.html
provider "wibble" {
  version = "~> 1.45"
  region  = "eu-west-2"
}

terraform {
  required_version = " ~> 0.11.11"
}

provider "random" {
  version = "~> 2.0"
}

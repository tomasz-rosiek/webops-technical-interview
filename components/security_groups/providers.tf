provider "aws" {
  version = "~> 1.45"
  region  = "eu-west-2"
}

terraform {
  required_version = " ~> 0.11.11"
}

provider "random" {
  version = "~> 2.0"
}

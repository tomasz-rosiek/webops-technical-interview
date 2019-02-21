data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    bucket = "tfstate-sandbox-93bc63e0b4f48fbbff568d9fc0dc3def"
    region = "eu-west-2"
    key    = "interview_coding_test_vpc.tfstate"
  }
}

data "terraform_remote_state" "security" {
  backend = "s3"

  config {
    bucket = "tfstate-sandbox-93bc63e0b4f48fbbff568d9fc0dc3def"
    region = "eu-west-2"
    key    = "interview_coding_test_security.tfstate"
  }
}

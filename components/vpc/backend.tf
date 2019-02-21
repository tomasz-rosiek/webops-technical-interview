terraform {
  backend "s3" {
    bucket         = "tfstate-sandbox-93bc63e0b4f48fbbff568d9fc0dc3def"
    region         = "eu-west-2"
    key            = "interview_coding_test_vpc.tfstate"
    encrypt        = "true"
    dynamodb_table = "webops-sandbox-tflock"
    acl            = "bucket-owner-full-control"
  }
}

terraform {
  backend "s3" {
    bucket = "tfstate-feb-dev"
    key = "dev/terraform.tfstate"
    region = "us-west-1"
    encrypt = true
    dynamodb_table = "tfstate-feb-dev-db"
  }
}
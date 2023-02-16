terraform {
  backend "s3" {
    bucket = "tfstate-feb-prod"
    key = "prod/terraform.tfstate"
    region = "us-west-1"
    encrypt = true
    dynamodb_table = "tfstate-feb-prod-db"
  }
}
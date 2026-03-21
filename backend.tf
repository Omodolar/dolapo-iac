terraform  {
  backend  "s3" {
    bucket  =  "dolapo-iac-statefile"
    key     =  "vpc/prod/terraform.tfstate"
    region  =  "us-east-1"
    dynamodb_table = "tf-state-lock"
  }
}


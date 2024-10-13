terraform {
  backend "s3" {
    bucket         = "khulnasoft-production-terraform-state"
    key            = "services/backend-app/terraform.tfstate"
    dynamodb_table = "terraform-state"
    region         = "us-east-2"
    encrypt        = true
  }
}

terraform {
    backend "s3" {
        bucket = "somana-terraform-state-backet-test"
        region = "us-east-1"
        key    = "network/terraform.tfstate"
        encrypt = "true"

    }
    required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}

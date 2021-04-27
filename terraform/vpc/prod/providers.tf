  provider "aws" {
    region = "us-east-1"
    allowed_account_ids = [ "325973811657" ]

    assume_role {
      role_arn     = "arn:aws:iam::325973811657:role/aws-reserved/sso.amazonaws.com/AWSReservedSSO_AdministratorAccess_039b774954c679af"
    }
  }

  terraform {
    backend "s3" {
      bucket = "terraform-state-2rffsadfa"
      key    = "sandbox-infra"
      region = "us-east-1"
    }
  }
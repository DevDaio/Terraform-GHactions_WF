terraform {
	  backend "s3" {
		bucket = "Terraform_state_bucket_14.07"
		key = "terraform.tfstate"
		region = "eu-central-1"
	  }
	}

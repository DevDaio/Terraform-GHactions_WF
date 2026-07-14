terraform {
    backend "s3" {
        bucket = "t-a-cv"
        key = "terraform.tfstate"
        region = "eu-central-1"
    }
}
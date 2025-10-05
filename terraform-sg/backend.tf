terraform {
  backend "s3" {
    bucket         = "dan-terraform-01"
    key            = "tf-statefile/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}

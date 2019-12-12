module "s3_bucket" {
  source              = "https://github.com/clouddrove/terraform-aws-s3?ref=tags/0.12.2"
  name                = "sandbox-terraform-bucket1"
  region              = "eu-central-1"
  application         = "sandbox"
  environment         = "test"
  label_order         = ["environment", "name", "application"]
  versioning          = true
  acl                 = "private"
  bucket_enabled      = true
}

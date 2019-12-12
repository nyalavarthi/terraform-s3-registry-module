module "s3_bucket" {
  source                   = "git::https://github.com/cloudposse/terraform-aws-s3-bucket.git?ref=master"
  enabled                  = true
  user_enabled             = true
  versioning_enabled       = false
  allowed_bucket_actions   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
  name                     = "terraform-module-sbox-bucket1"
  stage                    = "test"
  namespace                = "eg"
}

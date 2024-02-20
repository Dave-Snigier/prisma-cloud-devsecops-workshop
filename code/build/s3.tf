provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "a14d80ef64e972e56947320fceb609b5418f91b0"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-02-20 17:30:52"
    git_last_modified_by = "dave@davesnigier.com"
    git_modifiers        = "dave"
    git_org              = "Dave-Snigier"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "44bbba85-567c-4809-89cf-22dfddcff378"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

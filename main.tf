

provider "aws" {

    region = "us-east-1"
    profile = "demo_aws"
  
}

resource "aws_s3_bucket" "aws_s3_bucket_demo" {

   for_each = local.s3_bucket_names

   bucket = each.key 

   versioning {
    enabled = local.s3_bucket_configs[each.key].versioning
   }

   tags = {
    project_type = local.s3_bucket_configs[each.key].project_type
   }
  
}



provider "aws" {

    region = var.region_var
    profile = var.profile_var
  
}


resource "aws_s3_bucket" "aws_s3_bucket_demo" {

    bucket = var.bucket_name_var
    tags = {
        project_type = "demo"
    }
  
}


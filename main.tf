
provider "aws" {

    region = local.region_name
    profile = local.profile_name
  
}

resource "aws_s3_bucket" "aws_s3_bucket_demo" {

    bucket = "demos3bucketusingterraform"
    tags = {
        project_type = local.project_type
    }
  
}


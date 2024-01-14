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


resource "aws_s3_object" "nyc_data" {
    bucket = aws_s3_bucket.aws_s3_bucket_demo.id

    key = "/data/yellow_tripdata_2023-01.parquet"
    source = "./data/yellow_tripdata_2023-01.parquet"

    tags = {
        project_type = local.project_type
    }


}

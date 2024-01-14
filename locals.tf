locals {
  
    s3_bucket_names = toset(["demos3bucketusingterraform1","demos3bucketusingterraform2","demos3bucketusingterraform3"])

    s3_bucket_configs = {

        demos3bucketusingterraform1 = {
            versioning = true
            project_type = "demo1"
        }

        demos3bucketusingterraform2 = {
            versioning = false 
            project_type = "demo2"
        }

        demos3bucketusingterraform3 = {
            versioning = true
            project_type = "demo3"
        }


    }
}

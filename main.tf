# Create new storage bucket in the US multi-region
# with standard storage

resource "google_storage_bucket" "static" {
 name          = "snow-test-7"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}


output "bucket_name" {
  description = "The fully resolved name of the GCS bucket"
  value       = google_storage_bucket.static.name
  
}

resource "google_storage_bucket" "app_bucket" {
  name          = "${var.project_id}-app-bucket"
  location      = "US"
  force_destroy = true
}

output "bucket_name" {
  value = google_storage_bucket.app_bucket.name
}

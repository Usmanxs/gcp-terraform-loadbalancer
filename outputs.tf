output "instance_external_ip" {
  value = module.instances.external_ip
}

output "load_balancer_ip" {
  value = google_compute_global_address.lb_ip.address
}

output "sql_instance_ip" {
  value = module.sql.instance_ip
}

output "storage_bucket_name" {
  value = module.storage.bucket_name
}
    
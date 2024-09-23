resource "google_sql_database_instance" "sql_instance" {
  name             = "app-db"
  database_version = "MYSQL_5_7"
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "app_db" {
  name     = "appdb"
  instance = google_sql_database_instance.sql_instance.name
}

resource "google_sql_user" "app_user" {
  name     = "app_user"
  instance = google_sql_database_instance.sql_instance.name
  password = "password"
}

output "instance_ip" {
  value = google_sql_database_instance.sql_instance.public_ip_address
}

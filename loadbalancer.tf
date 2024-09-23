resource "google_compute_global_address" "lb_ip" {
  name = "http-lb-ip"
}

resource "google_compute_health_check" "http" {
  name               = "http-health-check"
  check_interval_sec = 5
  timeout_sec        = 5
  healthy_threshold  = 2
  unhealthy_threshold = 2
  http_health_check {
    port = 80
  }
}

resource "google_compute_backend_service" "default" {
  name        = "backend-service"
  port_name   = "http"
  protocol    = "HTTP"
  health_checks = [google_compute_health_check.http.id]
  backend {
    group = google_compute_instance.vm_1.self_link
  }
  backend {
    group = google_compute_instance.vm_2.self_link
  }
}

resource "google_compute_url_map" "default" {
  name            = "url-map"
  default_service = google_compute_backend_service.default.id
}

resource "google_compute_target_http_proxy" "default" {
  name   = "http-lb-proxy"
  url_map = google_compute_url_map.default.id
}

resource "google_compute_global_forwarding_rule" "default" {
  name       = "http-forwarding-rule"
  ip_address = google_compute_global_address.lb_ip.id
  port_range = "80"
  target     = google_compute_target_http_proxy.default.id
}

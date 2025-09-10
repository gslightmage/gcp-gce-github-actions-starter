
# A resource that can be linked to a compute instance to keep it only up during the day
resource "google_compute_resource_policy" "conservative" {
  name        = "gce-policy"
  region      = var.gcp.region
  description = "Start and stop instances"
  instance_schedule_policy {
    vm_start_schedule {
      schedule = "59 09 * * *"
    }
    vm_stop_schedule {
      schedule = "59 15 * * *"
    }
    time_zone = "US/Central"
  }
}

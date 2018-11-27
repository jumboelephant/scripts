provider "google"
{

  credentials = "${var.gcloudPassword}"
  project = ""
  region = ""
  
}

resource "google_compute_instance" "ubuntuDC" {
  "boot_disk"
  {
    device_name = "sda"
  }
  machine_type = "ubuntu-"
  name = ""
  "network_interface" {}
}
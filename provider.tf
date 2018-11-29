provider "google"
{
  credentials = "${var.gcloudPassword}"
  project = ""
  region = ""
}
resource "google_compute_instance" "ubuntuDC"
{
  "boot_disk"
  {
    device_name = "sda"
  }
  machine_type = "ubuntu-"
  name = ""
  "network_interface" {}
}
data "google_compute_network" "Corp"
{
  name = "Corp"
  project = ""
}
data "google_compute_subnetwork" "CorpSubnet"
{
  name = "CorpSubnet"
  network = "1st"
  ip_cidr_range = "10.10.10.0/24"
  region = ""
  depends_on = ["data.google_compute_network.Corp"]
}
output "String"
{
  value = "Built some shit right here dudes"
}
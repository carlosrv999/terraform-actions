resource "google_compute_network" "default" {
  name                    = "tf-network-demo"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public_1" {
  name          = "tf-subnet-public-1"
  ip_cidr_range = "10.125.0.0/20"
  region        = var.region
  network       = google_compute_network.default.name
}

resource "google_compute_subnetwork" "public_2" {
  name          = "tf-subnet-public-2"
  ip_cidr_range = "10.125.16.0/20"
  region        = var.region
  network       = google_compute_network.default.name
}

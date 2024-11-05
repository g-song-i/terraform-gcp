output "instance_one_ip" {
  value = google_compute_instance.cecil_test_one.network_interface[0].network_ip
}

output "instance_two_ip" {
  value = google_compute_instance.cecil_test_two.network_interface[0].network_ip
}

output "instance_one_ip" {
  description = "The internal IP address of instance one"
  value       = google_compute_instance.instance_one.network_interface[0].network_ip
}

output "instance_two_ip" {
  description = "The internal IP address of instance two"
  value       = google_compute_instance.instance_two.network_interface[0].network_ip
}

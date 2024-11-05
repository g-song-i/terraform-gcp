variable "project_id" {
  type        = string
  description = "The project ID to host resources in."
}

variable "region" {
  type        = string
  description = "The region where resources will be created."
  default     = "asia-southeast1"
}

variable "zone" {
  type        = string
  description = "The zone where resources will be created."
}
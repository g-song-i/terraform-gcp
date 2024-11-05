variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy resources in"
  type        = string
}

variable "zone" {
  description = "The GCP zone to deploy the instances in"
  type        = string
}

variable "subnet_one_name" {
  description = "The name of the first subnet"
  type        = string
}

variable "subnet_two_name" {
  description = "The name of the second subnet"
  type        = string
}

variable "subnet_one_cidr" {
  description = "The CIDR range for the first subnet"
  type        = string
}

variable "subnet_two_cidr" {
  description = "The CIDR range for the second subnet"
  type        = string
}

variable "instance_one_name" {
  description = "The name of the first compute instance"
  type        = string
}

variable "instance_two_name" {
  description = "The name of the second compute instance"
  type        = string
}
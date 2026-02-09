variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone to deploy resources"
  type        = string
  default     = "us-central1-a"
}

variable "vm_name" {
  description = "Name of the VM instance"
  type        = string
  default     = "demo-vm"
}

variable "machine_type" {
  description = "GCP machine type for the VM"
  type        = string
  default     = "e2-micro"
}

variable "network_tags" {
  description = "Network tags to apply to the VM"
  type        = list(string)
  default     = ["http-server", "ssh"]
}

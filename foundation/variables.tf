variable "bucket_id" {
  description = "The name of the bucket"
  default     = "cnad-bucket-xyz"
}

variable "project_id" {
  type        = string
  description = "ID of the Google Project"
}

variable "network" {
  type = string
}

variable "region" {
  type        = string
  description = "default region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "Default zone"
  default     = "us-central1-a"
}

variable "subnets" {
  type = list(object({
    name          = string
    region        = string
    ip_cidr_range = string
  }))
}

variable "roles" {
  type = list(string)
}

variable "services" {
  type = list(string)
}

variable "sa_name" {
  type = string
}


variable "vpc_connector_name" {
  type = string
}

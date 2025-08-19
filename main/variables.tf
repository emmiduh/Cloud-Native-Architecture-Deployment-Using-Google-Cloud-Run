variable "bucket_id" {
  type        = string
  description = "ID of the bucket"
}


variable "project_id" {
  type        = string
  description = "ID of the Google Project"
}

variable "container_images" {
  type        = string
  description = "ID of the container images"
}

variable "network" {
  type = string
}

variable "region" {
  type        = string
  description = "Default_region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "Default zone"
  default     = "us-central1-a"
}

variable "subnets" {
  # type = map(any)
}

variable "vpc_connector_name" {
  type = string
}

variable "services" {
  type = list(string)
}

variable "roles" {
  type = list(string)
}

variable "sa_name" {
  type = string
}

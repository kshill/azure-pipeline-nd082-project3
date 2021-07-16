# Azure GUIDS
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

# Resource Group/Location
variable "location" {}
variable "resource_group" {}
variable "application_type" {}
# Tags
variable tier {}
variable size {}
variable deployment {}
variable project {}

variable virtual_network_name {}
variable address_prefix_test {}
variable address_space {}

locals {
  common_tags = {
    Environment = "Production"
    CreatedBy = "Terraform"
    "Project Name" = var.project
  }
}


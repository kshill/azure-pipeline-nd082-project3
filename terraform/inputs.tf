# Azure Info
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

# Resource Group/Location
variable "location" {}
variable "resource_group" {}

#App service
variable "application_type" {}
variable tier {}
variable size {}
variable deployment {}

#Project
variable project {}

#Network
variable virtual_network_name {}
variable address_prefix_test {}
variable address_space {}

#VM
variable deployment_vm_name {}
variable vm_size {}

variable admin_username {}

locals {
  common_tags = {
    Environment = "Production"
    CreatedBy = "Terraform"
    "Project Name" = var.project
  }
}


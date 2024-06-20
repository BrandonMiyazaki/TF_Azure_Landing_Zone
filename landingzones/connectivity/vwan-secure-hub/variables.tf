# Variables
variable "environment_tag" {
  type        = string
  default     = "tf-vwan-secure-hub"
  description = "Environment tag value"
}
variable "region1" {
  type        = string
  default     = "eastus"
  description = "location 1 for the lab"
}
variable "region2" {
  type        = string
  default     = "westus"
  description = "location 2 for the lab"
}
variable "virtual-wan-region1-hub1-prefix1" {
  type        = string
  default     = "10.10.0.0/21"
  description = "Address space for virtual-wan Location 1 Hub 1"
}
variable "virtual-wan-region2-hub1-prefix1" {
  type        = string
  default     = "10.20.0.0/21"
  description = "Address space for virtual-wan Location 2 Hub 1"
}
variable "region1-vnet1-address-space" {
  type        = string
  default     = "10.100.0.0/16"
  description = "VNET address space for region 1 vnet"
}
variable "region1-vnet1-snet1-range" {
  type        = string
  default     = "10.100.1.0/24"
  description = "Subnet address space for region 1 subnet"
}
variable "region1-vnet1-bastion-snet-range" {
  type        = string
  default    = "10.100.2.0/24"
  description = "Subnet address space for region 1 Bastion subnet"
}
variable "region2-vnet1-address-space" {
  type        = string
  default     = "10.200.0.0/16"
  description = "VNET address space for region 2 vnet"
}
variable "region2-vnet1-snet1-range" {
  type        = string
  default     = "10.200.1.0/24"
  description = "Subnet address space for region 2 subnet"
}
variable "region2-vnet1-bastion-snet-range" {
  type        = string
  default     = "10.200.2.0/24"
  description = "Subnet address space for region 2 Bastion subnet"
}
variable "vmsize" {
  type        = string
  default     = "Standard_B4ms"
  description = "vm size"
}
variable "adminusername" {
  type        = string
  default     = "vmadmin"
  description = "admin username"
}
# Optional Resources
variable "azfw" {
  type        = bool
  default     = true
  description = "Sets if Azure Firewalls and Policy are created or not"
}
Azure Virtual WAN Landing Zone Environment
Overview
This is a Terraform based landingzone with Azure Virtual WAN. This deployment has two options - with or without Azure Firewall, and is based on a two-region design.

What does this code deploy?
Without Azure Firewall:
Virtual WAN Hub Environment

With Azure Firewall:
Virtual WAN Hub Environment - with Azure Firewall

What does this deploy?
This code deploys the following Resources:

A Resource Group in two Azure Regions (based on variables)
A Virtual WAN in the Primary Region
A Virtual WAN Hub in two Azure Regions
A vNet in each Azure Region which is connected to the Virtual WAN Hub.
A Subnet and NSG in each of the above vNets.
A Subnet in each Region to be used for Azure Bastion.
Azure Bastion in each Region to allow for access to the VMs for Testing.
A Virtual Machine in each Azure Region (in the Regional vNets), to allow testing of Connectivity.

Note: Enabling Azure Firewall
To enable Azure Firewall set the following variable to true within the variables.tf file:

variables.tf

Lines

 # Optional - Firewalls 
default     = true
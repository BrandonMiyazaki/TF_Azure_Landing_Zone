The Azure landing zones Terraform module is designed to accelerate deployment of platform resources based on the Azure landing zones conceptual architecture using Terraform.

A conceptual architecture diagram highlighting the design areas covered by the Azure landing zones Terraform module.

This is currently split logically into the following capabilities within the module (links to further guidance on the Wiki):

Module capability	Scope	Design area
Core Resources	Management group and subscription organization	Resource organization
Management Resources	Management subscription	Management
Connectivity Resources	Connectivity subscription	Network topology and connectivity
Identity Resources	Identity subscription	Identity and access management
Using a very simple initial configuration, the module will deploy a management group hierarchy based on the above diagram. This includes the recommended governance baseline, applied using Azure Policy and Access control (IAM) resources deployed at the management group scope. The default configuration can be easily extended to meet differing requirements, and includes the ability to deploy platform resources in the management and connectivity subscriptions.

NOTE: In addition to setting input variables to control which resources are deployed, the module requires setting a Provider Configuration block to enable deployment across multiple subscriptions.
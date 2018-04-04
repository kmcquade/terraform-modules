variable "vpc_id" {
  description = "VPC id where the load balancer and other resources will be deployed."
}

variable "ip_address_type" {
  description = "The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack."
  default     = "ipv4"
}

variable "load_balancer_name" {
  description = "The resource name and Name tag of the load balancer."
}

variable "https_listeners" {
  description = "A list of maps describing the HTTPS listeners for this ALB. Required key/values: port, certificate_arn. Optional key/values: ssl_policy (defaults to ELBSecurityPolicy-2016-08), target_group_index (defaults to 0)"
  type        = "list"
  default     = []
}

variable "https_listeners_count" {
  description = "A manually provided count/length of the https_listeners list of maps since the list cannot be computed."
  default     = 0
}

variable "http_tcp_listeners" {
  description = "A list of maps describing the HTTPS listeners for this ALB. Required key/values: port, protocol. Optional key/values: target_group_index (defaults to 0)"
  type        = "list"
  default     = []
}

variable "http_tcp_listeners_count" {
  description = "A manually provided count/length of the http_tcp_listeners list of maps since the list cannot be computed."
  default     = 0

variable "subnets" {
  description = "A list of subnets to associate with the load balancer."
  type        = "list"
}

variable "load_balancer_is_internal" {
  description = "Load balancer scheme. Boolean determining if the load balancer is internal or externally facing."
  default     = false
}

 variable "listener_ssl_policy_default" {
  description = "The security policy if using HTTPS externally on the load balancer."
  default     = "ELBSecurityPolicy-2016-08"
}
  
variable "security_groups" {
  description = "The security groups to attach to the load balancer."
  type        = "list"
}
  
 variable "target_groups" {
  description = "A list of maps containing key/value pairs that define the target groups to be created. Order of these maps is important and the index of these are to be referenced in listener definitions. Required key/values: name, backend_protocol, backend_port. Optional key/values are in the target_groups_defaults variable."
  type        = "list"
  default     = []
}

variable "target_groups_count" {
  description = "A manually provided count/length of the target_groups list of maps since the list cannot be computed."
  default     = 0
}

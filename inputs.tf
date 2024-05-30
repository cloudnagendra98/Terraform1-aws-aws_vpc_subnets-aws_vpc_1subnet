variable "vpc_network_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "This is vpc network cidr range"
}

variable "subnet_cidr" {
  type        = string
  default     = "10.10.0.0/24"
  description = "This is subnet cidr network range"

}

variable "subnet_name" {
  type        = string
  default     = "web"
  description = "This is subnet name"

}
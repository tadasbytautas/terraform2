variable "vpc_id" {
  description = "SG id for ec2"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 8080, 80]
}

variable "open_internet" {
  default = "0.0.0.0/0"
}

variable "outbound_port"{
  default = 0
}
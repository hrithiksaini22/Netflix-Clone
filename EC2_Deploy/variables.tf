variable "aws_region" {
  type    = string
  default = "us-east-1" // this is called default variable and if we simply just write the description and type of the variable, tf
  // would ask the user to enter the values from the cmd while planning and applying the config.
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
  }
}
variable "variables-subnet-cidr" {
  description = "cidr block"
  default     = "10.0.25.0/24"
  type        = string
}
variable "variables-subnet-availability_zone" {
  description = "AZ"
  default     = "us-east-1a"
  type        = string
}
variable "variables-subnet-map_public_ip_on_launch" {
  description = "Mapping"
  default     = true
  type        = bool
}
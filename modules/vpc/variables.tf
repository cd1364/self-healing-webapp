variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "cd-webserver-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "igw_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
  default     = "cd-webserver-IGW"
}

variable "route_table_name" {
  description = "Name tag for the public route table"
  type        = string
  default     = "cd-webserver-RT"
}

variable "public_subnets" {
  description = "Map of public subnets to create. Key is a short identifier (e.g. sn1, sn2, sn3)."
  type = map(object({
    cidr_block = string
    az         = string
    name       = string
  }))

  default = {
    sn1 = {
      cidr_block = "10.0.1.0/24"
      az         = "us-east-1a"
      name       = "cd-webserver-SN-1"
    }
    sn2 = {
      cidr_block = "10.0.2.0/24"
      az         = "us-east-1b"
      name       = "cd-webserver-SN-2"
    }
    sn3 = {
      cidr_block = "10.0.3.0/24"
      az         = "us-east-1c"
      name       = "cd-webserver-SN-3"
    }
  }
}

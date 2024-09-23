variable "project_id" {
  type = string
}

variable "region" {
  default = "us-east4"
}

variable "zone" {
  default = "us-east4-b"
}

variable "subnet_cidr_1" {
  default = "10.0.1.0/24"
}

variable "subnet_cidr_2" {
  default = "10.0.2.0/24"
}

variable "instance_type" {
  default = "e2-micro"
}

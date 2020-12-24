variable "ami" {
  type = string
  default = "ami-0ff4c8fb495a5a50d"
}

variable "instance_type" {
  type = string
  default = "t3.nano"
}

variable "key_name" {
  type = string
  default = "awol_key"
}

variable "availability_zone" {
  type = string
  default = "eu-west-2a"
}

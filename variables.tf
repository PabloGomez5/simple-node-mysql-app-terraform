variable "ami" {
  type = string
  default = "ami-0885b1f6bd170450c"
}

variable "instance_type" {
  type = string
  default = "t3.nano"
}

variable "key_name" {
  type = string
  default = "webapp"
}

variable "availability_zone" {
  type = string
  default = "us-east-1f"
}

variable "aws_region" {
  default = "eu-north-1"

}

variable "instance_type" {
  default = "t3.micro"

}

variable "key_name" {
  description = "Name of the key pair to use for the instance"

}
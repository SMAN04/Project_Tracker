variable "aws_region" {
  default = "eu-north-1"

}

variable "instance_type" {
  default = "t3.micro"

}

variable "key_name" {
  description = "Current AWS key pair"

}

variable "public_key_path" {
  description = "Path to public SSH key"

}
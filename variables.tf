variable "AWS_REGION" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  description = "my_new"
}

variable "instance_name" {
  default = "my-ec2-instance"
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.xlarge"
}

variable "key_name" {
  default = "my_new"
  description = "my_new"
}

variable "instance_name" {
  default = "my-ec2-instance"
}
variable "instance_name_nodejs" {
  type        = string
  default     = "NodeJS-Instance"
}

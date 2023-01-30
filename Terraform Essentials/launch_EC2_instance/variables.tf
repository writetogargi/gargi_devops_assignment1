variable "profile" {
  type        = string
  default     = "awsacademy-gargi"
  description = "aws profile name"
}

variable region {
  type        = string
  default     = "us-east-1"
  description = "aws default region"
}

# variable "ami-id" {
#   type        = string
#   default     = "ami-0b5eea76982371e91"
#   description = "AMI id"
# }


variable "ami-id" {
  type        = map
  default     = {
    us-east-1 = "ami-0b5eea76982371e91"
    us-west-2 = "ami-0ceecbb0f30a902a6"
  }
  description = "ec2 AMI id using map"
}


variable ssh_key_name {
  type        = string
  default     = "deb-rsa"
  description = "ssh key name"
}


variable tags_name {
  type        = string
  default     = "DemoInstance"
  description = "tag:  name=DemoInstance"
}


variable private_key_path {
  type        = string
  default     = "~/.ssh/deb-rsa.pem" # 
  description = "ssh pem key path"
}

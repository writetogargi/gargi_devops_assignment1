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

variable private_key_path {
  type        = string
  default     = "~/.ssh/deb-rsa.pem" # 
  description = "ssh pem key path"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for launch template"
  default     = "t2.micro"
}

variable nginx_port {
  type        = string
  description = "Nginx port"
  default     = 80
}

variable "cluster_name" {
  type        = string
  description = "ECS cluster name"
}
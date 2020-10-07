variable "region" {
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "CIDR" {
  default = "192.168.0.0/16"
}

variable "subnet" {
  default = "192.168.99.0/24"
}

output "dns-publico" {
  value = aws_instance.practico-wireless-course-ec2.public_dns
}

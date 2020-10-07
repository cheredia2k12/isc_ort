resource "aws_vpc" "practico-wireless-course-vpc" {
  cidr_block           = var.CIDR
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-vpc"

  }
}

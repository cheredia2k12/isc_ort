resource "aws_subnet" "practico-wireless-course-priv-sn" {
  vpc_id                  = aws_vpc.practico-wireless-course-vpc.id
  cidr_block              = var.subnet
  map_public_ip_on_launch = "true"
  tags = {
    Name = "terraform-sn"
  }
}

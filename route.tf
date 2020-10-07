resource "aws_default_route_table" "practico-wireless-course-route" {
  default_route_table_id = aws_vpc.practico-wireless-course-vpc.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.practico-wireless-course-gw.id
  }
  tags = {
    Name = "terraform-route"
  }
}

resource "aws_internet_gateway" "practico-wireless-course-gw" {
  vpc_id = aws_vpc.practico-wireless-course-vpc.id
  tags = {
    Name = "terraform-gw"
  }
}

resource "aws_security_group" "practico-wireless-course-sg" {
  name   = "practico-wireless-course"
  vpc_id = aws_vpc.practico-wireless-course-vpc.id
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

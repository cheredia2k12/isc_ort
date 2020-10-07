resource "aws_instance" "practico-wireless-course-ec2" {
  ami           = "ami-0817d428a6fb68645"
  instance_type = "t2.micro"
  key_name      = "practico-wireless-course-ec2-key"
  vpc_security_group_ids = [aws_security_group.practico-wireless-course-sg.id]
  subnet_id = aws_subnet.practico-wireless-course-priv-sn.id
  tags = {
    Name = "practico-wireless-course"
  }
  connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("./practico-wireless-course-ec2-key")
      host = self.public_ip
      }
      provisioner "remote-exec" {
          inline = [
            "sudo apt-get update -y",
            "sudo apt-get install -y ca-certificates wget",
            "wget https://get.glennr.nl/unifi/install/unifi-5.13.32.sh",
          ]
          on_failure = continue
      }
}

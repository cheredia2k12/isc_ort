resource "aws_instance" "practico-wireless-course-ec2" {
  ami           = "ami-0817d428a6fb68645"
  instance_type = "t2.micro"
  key_name      = "key_instancia-wireless-course"
  subnet_id = aws_subnet.practico-wireless-course-priv-sn.id
  tags = {
    Name = "practico-wireless-course"
  }
  connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("/home/christian/terraform_ejercicio_wireless_course/key_instancia-wireless-course.pem")
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

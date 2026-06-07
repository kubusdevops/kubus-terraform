resource "aws_instance" "kubus_app" {
  ami             = "ami-00e801948462f718a"
  instance_type   = "t2.micro"
  key_name        = "kubuskey"
  security_groups = [aws_security_group.kubus_sg.name]

  tags = {
    Name = "kubus-app"
  }

}
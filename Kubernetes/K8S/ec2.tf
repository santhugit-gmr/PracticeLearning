resource "aws_instance" "my_ec2" {
  ami           = "ami-07ff62358b87c7116"  # Amazon Linux 2 (Mumbai)
  instance_type = "t2.micro"
  key_name      = var.key_name

  user_data = file("${path.module}/workstation.sh")

  tags = {
    Name = "Terraform-EC2"
  }
}
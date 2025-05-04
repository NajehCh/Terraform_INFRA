
resource "aws_instance" "nodejs_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "NodeJS-Instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y curl
              curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
              sudo apt install -y nodejs
              echo "Node.js is installed" > /home/ubuntu/index.js
              EOF
}
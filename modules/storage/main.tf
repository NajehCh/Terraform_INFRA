resource "aws_ebs_volume" "data" {
  availability_zone = "us-east-1a"
  size              = 8
  type              = "gp2"

  tags = {
    Name = "example-volume"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.data.id
  instance_id = var.instance_id
  force_detach = true
}

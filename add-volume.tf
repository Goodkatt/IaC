/*
resource "aws_ebs_volume" "data-disk" {
  size = 1
  availability_zone = aws_instance.web.availability_zone
  type = "gp3"

  tags = {
    Name = "web-data"
  }
}

resource "aws_volume_attachment" "attach-data" {
  device_name = "/dev/sdf"
  volume_id = aws_ebs_volume.data-disk.id
  instance_id = aws_instance.web.id
}
*/
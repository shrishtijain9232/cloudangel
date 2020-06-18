resource "aws_ebs_snapshot" "snapshot" {
  volume_id = "${aws_ebs_volume.document-storage.id}"

  tags = {
    Name = "srishty-ebs-snap"
  }
} 
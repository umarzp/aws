resource "aws_key_pair" "aslam_key_pair" {
  key_name   = "aslam-key-pair"
  public_key = var.key_pair["aslam"]
}
data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = [var.ami_id["owners"]]
  filter {
    name   = "name"
    values = [var.ami_id["name"]]
  }
  filter {
    name   = "architecture"
    values = [var.ami_id["architecture"]]
  }
}
resource "aws_instance" "aslam_instance" {
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.easlam_key_pair.key_name
  tags = {
    Name = "aslam_instance"
    # Add more tags as needed
  }
}
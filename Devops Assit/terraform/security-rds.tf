# Create Security Group for rds
resource "aws_security_group" "sgrds" {
  name_prefix = "tf-sgrds-"
  vpc_id = aws_vpc.tfvpc.id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "contest-sgrds"
  }
}
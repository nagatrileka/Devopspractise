# creating subnet group for database 
resource "aws_db_subnet_group" "subgrprds" {
  name       = "main"
  subnet_ids = [aws_subnet.public.id, aws_subnet.public2.id]

  tags = {
    Name = "My DB subnet group"
  }
}
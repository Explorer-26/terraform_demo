resource "aws_security_group" "bad_sg" {
  name        = "open-to-the-world"
  description = "A terrible security group"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

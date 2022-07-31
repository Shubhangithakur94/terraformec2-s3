
resource "aws_instance" "shivam1" {
  ami   = "ami-065efef2c739d613b"
  instance_type = "t2.micro"


  tags = {

Name = "RHEL-8"

}

}
  



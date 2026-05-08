provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "webserver"{
  ami = "ami-0eb38b817b93460ac"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-cicd-demo"
  }
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "test" {
  count = 2
  ami           = "ami-4836a428"
  instance_type = "t2.micro"
}

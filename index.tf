provider "aws" {
  region = "${var.aws-region}"
  profile = "setevoy-root"
}

resource "aws_instance" "tf-example-ec2" {

  ami = "ami-34414d4d"
  instance_type = "t2.nano"
  key_name = "${var.aws-key-name}"
  associate_public_ip_address = "true"

  tags {
    "Name"      = "tf-example-ec2"
    "Env"       = "${var.aws-cluster-name}"
  }
}

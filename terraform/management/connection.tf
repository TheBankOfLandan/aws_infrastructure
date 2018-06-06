provider "aws" {
  region = "${var.region}"

  #shared_credentials_file = "credentials"
  profile = "terraform"
}

resource "aws_key_pair" "key" {
  key_name   = "${var.key_name}"
  public_key = "${file("management_key.pub")}"
}

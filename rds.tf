provider "aws" {
  region = "ap-southeast-1"
  access_key = "AKIAYP5CC6WOP3HWZAUV"
  secret_key = "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"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

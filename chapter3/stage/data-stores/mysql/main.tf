provider "aws" {
    region = "us-east-2"
}

resource "aws_db_instance" "example" {
    identifier_prefix = "terraformm-up-and-running"
    engine = "mysql"
    allocated_storage = 10
    instance_class = "db.t2.micro"
    skip_final_snapshot = true
    db_name = "example_database"

    username = var.db_username
    password = var.db_password
    
}

terraform {
  backend "s3" {

    bucket = "terraform-up-and-running-state-martini"
    region = "us-east-2"
    key = "stage/data-stores/mysql/terraform.tfstate"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true

  }
}
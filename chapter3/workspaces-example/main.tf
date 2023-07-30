provider "aws" {

    region = "us-east-2"

}

resource "aws_instance" "example" {
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"

    
}

terraform {
  backend "s3" {

    bucket = "terraform-up-and-running-state-martini"
    region = "us-east-2"
    key = "workspaces-example/terraform.tfstate"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true

  }
}
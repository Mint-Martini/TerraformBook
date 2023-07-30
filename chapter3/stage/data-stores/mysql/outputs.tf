output "address" {
    value = aws_db_instance.example.address
    description = "the Address of the database "
  
}

output "port" {

    value = aws_db_instance.example.port
    description = "the port of the database "
  
}
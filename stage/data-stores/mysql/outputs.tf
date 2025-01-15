output "address" {
    value = aws_db_instance.example.address
    description = "connect to the db endpoint"
}

output "port" {
    value = aws_db_instance.example.port
    description = "the port of the db"
}
output "application_public_ip" {
  value = aws_instance.application_server.public_ip
}

output "application_public_dns" {
  value = aws_instance.application_server.public_dns
}
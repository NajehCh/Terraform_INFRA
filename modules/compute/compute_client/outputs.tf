output "public_ip_client" {
  value = aws_instance.client_instance.public_ip
}

output "instance_id_client" {
  value = aws_instance.client_instance.id
}
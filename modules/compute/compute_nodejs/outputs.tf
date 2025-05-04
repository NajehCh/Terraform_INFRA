output "public_ip_nodejs" {
  value = aws_instance.nodejs_instance.public_ip
}

output "instance_id_nodejs" {
  value = aws_instance.nodejs_instance.id
}
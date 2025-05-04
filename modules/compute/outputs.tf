output "public_ip" {
  value = aws_instance.jenkins.public_ip
}

output "instance_id" {
  value = aws_instance.jenkins.id
}


output "public_ip_nodejs" {
  value = aws_instance.nodejs_instance.public_ip
}

output "instance_id_nodejs" {
  value = aws_instance.nodejs_instance.id
}
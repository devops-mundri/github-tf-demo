output "instance_id" {
  description = "The ID of the AWS instance"
  value       = aws_instance.web.id
}

output "instance_public_ip" {
  description = "The public IP address of the AWS instance"
  value       = aws_instance.web.public_ip
}

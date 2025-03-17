output "alb_dns_name" {
  sensitive   = true
  description = "DNS del Application Load Balancer"
  value       = aws_lb.alb.dns_name
}

output "instance_public_ips" {
  description = "IPs públicas de las instancias EC2"
  value       = aws_instance.web[*].public_ip
}

output "target_group_alb" {
  description = "ID del Security Group del ALB"
  value       = aws_security_group.alb_sg.id
}

output "security_group_ec2" {
  description = "ID del Security Group de las instancias EC2"
  value       = aws_security_group.ec2_sg.id
}

variable "vpc_id" {
  description = "ID de la VPC"
}

variable "ami_id" {
  description = "ID de la AMI para la instancia EC2"
  default     = "ami-01f5a0b78d6089704"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  default     = "t2.micro"
}

variable "server_name" {
  description = "Nombre del servidor web"
  default     = "server-ejemplo"
}

variable "environment" {
  description = "Ambiente de la aplicación"
  default     = "test"
}

variable "instance_count" {
  description = "Número de instancias EC2"
  default     = 2
}

variable "alb_terraform" {
  description = "Nombre del Application Load Balancer"
  default     = "alb-nginx"
}

variable "alb_type" {
  description = "Tipo de Load Balancer"
  default     = "application"
}

variable "target_group_port" {
  description = "Puerto del Target Group"
  default     = 80
}

variable "subnet_ids" {
  description = "Lista de subnets para el ALB"
  type        = list(string)
}

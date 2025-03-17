resource "aws_instance" "web" {
  count           = var.instance_count
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_ids[count.index]
  security_groups = [aws_security_group.ec2_sg.id] 

  tags = {
    Name        = "${var.server_name}-${count.index}"
    Environment = var.environment
  }

  user_data = <<-EOF
#!/bin/bash
echo "Hello World" > /var/www/html/index.html
nohup python3 -m http.server 80 &
EOF
}

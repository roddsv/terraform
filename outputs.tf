output "instance_id" {
  description = "ID da Instância do EC2"
  value = aws_instance.bia-dev.id
}

output "instance_type" {
  description = "Tipo da Instância do EC2"
  value = aws_instance.bia-dev.instance_type
}

output "instance_security_groups" {
  description = "Security Groups da Instância do EC2"
  value = aws_instance.bia-dev.security_groups
}

output "instance_private_ip" {
    description = "IP privado da Instância do EC2"
    value = aws_instance.bia-dev.private_ip
}

output "instance_public_ip" {
    description = "IP público da Instância do EC2"
    value = aws_instance.bia-dev.public_ip
}

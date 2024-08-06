# Ausgabe der EC2-Instanz-Details
output "instance_ids" {
  value = [for instance in aws_instance.example : instance.id]
}

output "instance_public_ips" {
  value = [for instance in aws_instance.example : instance.public_ip]
}

# Outputs für die VPC
output "vpc_id" {
  description = "Die ID der VPC"
  value       = aws_vpc.main.id
}

# Outputs für öffentliche Subnetze, benannt nach den statischen Namen
output "public_subnet_id_1a" {
  description = "Die ID des ersten öffentlichen Subnetzes (eu-central-1a)"
  value       = aws_subnet.public[0].id
}

output "public_subnet_id_1b" {
  description = "Die ID des zweiten öffentlichen Subnetzes (eu-central-1b)"
  value       = aws_subnet.public[1].id
}

output "public_subnet_id_1c" {
  description = "Die ID des dritten öffentlichen Subnetzes (eu-central-1c)"
  value       = aws_subnet.public[2].id
}

# Outputs für private Subnetze, benannt nach den statischen Namen
output "private_subnet_id_1a" {
  description = "Die ID des ersten privaten Subnetzes (eu-central-1a)"
  value       = aws_subnet.private[0].id
}

output "private_subnet_id_1b" {
  description = "Die ID des zweiten privaten Subnetzes (eu-central-1b)"
  value       = aws_subnet.private[1].id
}

output "private_subnet_id_1c" {
  description = "Die ID des dritten privaten Subnetzes (eu-central-1c)"
  value       = aws_subnet.private[2].id
}
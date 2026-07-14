output "public_ips" {
	value = aws_instance.Terraform_instance[*].public_ip
}
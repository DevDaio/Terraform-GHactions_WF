output "public_ip" {
	value = aws_instance.Terraform_instance[*].public_ip
}
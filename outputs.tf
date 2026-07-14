output "instancce_ip" {
	value = aws_ec2_instance.Terraform.*.public_ip
}
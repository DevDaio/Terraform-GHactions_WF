resource "aws_ec2_instance" "Terraform_instance" {
	count = var.instance_count
	ami           = var.ami_image
	instance_type = var.instance_type
}
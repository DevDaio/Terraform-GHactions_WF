
resource "aws_instance" "Terraform_instance" {
	count         = var.instance_count
	ami           = var.ami_image
	instance_type = var.instance_type

	tags = {
		Name = "Terraform-${count.index + 1}"
	}
}
resource "aws_security_group" "terraform_sg" {
	name        = "terraform-ssh-sg"
	description = "Allow SSH from anywhere"

	ingress {
		from_port   = 22
		to_port     = 22
		protocol    = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	egress {
		from_port   = 0
		to_port     = 0
		protocol    = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

	tags = {
		Name = "terraform-ssh-sg"
	}
}

resource "aws_instance" "Terraform_instance" {
	count         = var.instance_count
	ami           = var.ami_image
	instance_type = var.instance_type
	vpc_security_group_ids = [aws_security_group.terraform_sg.id]

	tags = {
		Name = "Terraform-${count.index + 1}"
	}
}
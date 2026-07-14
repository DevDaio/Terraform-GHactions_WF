variable "instance_count" {
  type        = number
  default     = 3
}
variable "region" {
	type = string
	default = "eu-central-1"
} 
variable "instance_type" {
	type = string
	default = "t2.micro"
}
variable "ami_image" {
	type =  string
	default = "ami-0303e2e4a29f041a3"
}
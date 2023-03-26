# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "ec2_T2" {
  count         = var.T2_Instances
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  subnet_id     = "subnet-09d5d6300757d2b1f"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "ec2_M4" {
  count         = var.M4_Instances
  ami           = "ami-0022f774911c1d690"
  instance_type = "m4.large"
  subnet_id     = "subnet-09d5d6300757d2b1f"
  tags = {
    Name = "Udacity M4"
  }
}
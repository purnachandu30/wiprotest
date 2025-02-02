module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "terraform-ec3"

  ami                    = "ami-09de362f44ba0a166"
  instance_type          = "t2.micro"
  key_name               = "linuxserver1"
  monitoring             = true
  vpc_security_group_ids = ["sg-a25209de"]
  subnet_id              = "subnet-c28b7aa9"
}

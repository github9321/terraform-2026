module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "multi-instance"

  instance_type = "t3.micro"
  key_name      = "san-26"
  monitoring    = true
  subnet_id     = "subnet-0ab2056f9db101057"
  vpc_security_group_ids = [ "sg-080b9b77149ca75e6" ]
  count = 2

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

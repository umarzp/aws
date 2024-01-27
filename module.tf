variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = map(string)
   default     = {
    owners      = "amazon",
    name        = "amzn2-ami-hvm-*-x86_64-gp2",
    architecture = "x86_64",
   }
}
variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}
variable "key_pair" {
  description = "instance key pair for ec2 instance"
  type        = map(string)
  default = {
    aslam = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCWdYKdGgGV96FlQHgcor3N9C0HOlAzg3dUMzVCyjDoiUXvDlC9sn0j0beuCDe8md4IyTlwbLvLqD5oX01qA+7ywxWlyZdPh+nDkdH0TFidWwit4KSJns36RkA53vY27/BmYHyM+EW3X7GvTkOmqolLLnpzKYqJUzkI/5BsRkxHl5M9mB7JYiyAqxRi3HcmOlNScNYF+9a2mnebLQN2mz7Oe6JLaKMiiPKcrjQjKriw47/eh6DDcq4pm932AIr/ABXyrFcQbDbqQ0BG2+fxdG0pp4139rWVXYjU56FqYpe0i3GkuKY5CO7MUk4uZJTVM86F/MM3R3rZGNfhk8hddWHt aslam@ASLAM"
  }
}
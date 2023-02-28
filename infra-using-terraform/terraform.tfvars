project_name            = "Ansible-Dynamic-Inventory"
instance_type           = "t2.micro"
key_name                = "aws-ec2-access"
amazon_linux_host_count = 2
ubuntu_host_count       = 2
private_key_location    = "./aws-ec2-access.pem"
sg_ports = [
  {
    "port" : 22,
    "protocol" : "tcp"
  },
  {
    "port" : -1,
    "protocol" : "icmp"
  },
  {
    "port" : 443,
    "protocol" : "tcp"
  },
  {
    "port" : 80,
    "protocol" : "tcp"
  }
]


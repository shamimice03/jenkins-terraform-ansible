### Use the `terraform.tfvars` file to set variables as per your needs

```
project_name            = "Ansible-Dynamic-Inventory"
instance_type           = "t2.micro"
key_name                = "aws-ec2-access"
amazon_linux_host_count = 2
ubuntu_host_count       = 2
private_key_location    = "/home/ec2-user/.ssh/aws-ec2-access.pem"
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

```

### Run following commands to deploy Instances on aws
```
# set aws credentials on aws cli
aws configure 

# Initilize the terraform
terraform init

# Check before deploy
terraform plan

# Deploy on aws
terraform apply --auto-approve
```
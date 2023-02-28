variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "Ansible-Dynamic-Inventory"
}

variable "instance_type" {
  description = "Name of the project"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair"
  type        = string
  default     = "aws-ec2-access"
}

variable "amazon_linux_host_count" {
  description = "Number of amazon linux host"
  type        = number
  default     = 2
}

variable "ubuntu_host_count" {
  description = "Number of ubuntu host"
  type        = number
  default     = 2
}

variable "private_key_location" {
  description = "Location of the private key"
  type        = string
  default     = "./aws-ec2-access.pem"
}

variable "sg_ports" {

  description = "Define the ports and protocols for the security group"
  type        = list(any)
  default = [
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

}


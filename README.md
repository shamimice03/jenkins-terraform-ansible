# terraform-ansible-jenkins

Goal:
Our goal is to clone this repository first and the under the `infra-using-terraform` folder we have `terraform` code, which will provision multiple EC2 instances on `AWS`.
`EC2` instances will be provisioned from ubuntu AMI and Amazon linux AMI. Which represents different linux distribution. After provisiong instances, `terraform` 
code will create a `static_inventory` file. Which will help us to run `Ansible-Playbook` on remote hosts.

1. Create an AWS AMI for jenkins agent where all the necessary packages will be pre-installed. 
2. Configure `Jenkins-Agents` to run `terraform` and `ansible`
3. Configure Jenkins pipeline

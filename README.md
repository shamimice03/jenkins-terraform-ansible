### Our Goal is: 
Creating a `Jenkins` Pipeline which will provision several `EC2` instances using `terraform` and then installing `Docker` on the `EC2` instances using `Ansible`

### What we need:
1. Jenkins master server on AWS
2. Two Jenkins Agent (slaves)
   - Must have  `git`, `terraform`, and `ansible` installed
   - Must have appropriate `IAM instance profile` attached
3. Jenkins pipeline

### What we have on this `Repo`:
1. Terraform: Under the `infra-using-terraform` folder we have `terraform` code, which will provision multiple EC2 instances on `AWS`.
Note: `EC2` instances will be provisioned from `Ubuntu` AMI and `Amazon linux2` AMI. Which represents different linux distribution.
2. Ansible playbook: We have `three` ansible-playbook. 
   - `docker_install_on_ubuntu.yaml`
   - `docker_install_on_amazon_linux.yaml`
   - `docker_installation_playbook.yaml` for calling appropriate `playbook` as per linux distro.
3. `Jenkinsfile` which will be used to configure Jenkins pipeline job.


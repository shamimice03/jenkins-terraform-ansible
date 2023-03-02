### Our Goal is: 
Creating a `Jenkins` Pipeline which will provision several `EC2` instances using `terraform` and then installing `Docker` on the `EC2` instances using `Ansible`

### What we need:
1. Jenkins master server on AWS
2. Two Jenkins Agent (slaves)
   - Must have  `git`, `terraform`, and `ansible` installed
   - Must have appropriate `IAM instance profile` attached
3. Jenkins pipeline job


### What we have on this `Repo`:
1. Terraform: Under the `infra-using-terraform` folder we have `terraform` code, which will provision multiple EC2 instances on `AWS`.
Note: `EC2` instances will be provisioned from `Ubuntu` AMI and `Amazon linux2` AMI. Which represents different linux distributions.
2. Ansible playbook: We have `three` ansible-playbook. 
   - `docker_install_on_ubuntu.yaml`
   - `docker_install_on_amazon_linux.yaml`
   - `docker_installation_playbook.yaml` for calling appropriate `playbook` as per linux distro.
3. `Jenkinsfile` which will be used to configure Jenkins pipeline job.


### About `Jenkinsfile`
Our pipeline will use `two` jenkins slaves. One is labeled as `common` and another one is `ansible`.
On the `common` labeled slave all the stages will be built, and for running `ansible-playbook` we will use `ansible` labeled slave.

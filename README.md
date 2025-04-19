# Terraform AWS Project

![Terraform](https://img.shields.io/badge/Terraform-v1.6+-623CE4?logo=terraform&logoColor=white&style=for-the-badge)
![Ansible](https://img.shields.io/badge/Ansible-Automation-black?logo=ansible&logoColor=white&style=for-the-badge)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws&logoColor=white&style=for-the-badge)

## 📌Description

This project uses **Terraform** to automate the provisioning of AWS infrastructure.  
The setup includes a fully functional environment with:
- A Virtual Private Cloud (VPC)
- Public and private subnets
- Internet Gateway (IGW)
- Security Groups (SG)
- EC2 instance running in the configured subnet.
 
Each component is built as an individual module to keep the configuration clean, reusable, and scalable.
## 📘 Documentation Used

- [Terraform Documentation](https://www.terraform.io/docs) 
- [AWS Documentation](https://docs.aws.amazon.com/) 
- [AWS EC2 Instance Types](https://aws.amazon.com/ec2/instance-types/) 
- [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/) 
- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) 
- [AWS CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/)

## Project Structure

```plaintext
terraform_project/
├── main.tf           # Root module calling submodules
├── provider.tf       # AWS provider configuration
├── README.md         # README file explaining how to use the project
└── modules/
    ├── vpc/          # VPC module
    ├── subnet/       # Subnet module
    ├── IGW/          # Internet Gateway module
    ├── route-table/  # Route table and association module
    ├── SG/           # Security Group module
    └── ec2/          # EC2 instance module
```

Each module is responsible for a specific component of the infrastructure, following a clean and reusable structure.

## ⚙️ How to Use

1. **Clone the repository and initialize Terraform:**

   ```bash
   git clone https://github.com/moraa121212/terraform-aws-project.git
   cd terraform-aws-project
   terraform init && terraform plan && terraform apply

   You will be prompted to confirm before applying the infrastructure. Type yes to proceed.

## 📤 Deployment Output

Once the terraform apply command is successfully executed, you should see output similar to this
![alt text](<WhatsApp Image 2025-04-19 at 19.36.33_de2cc805.jpg>)

## 🧱 Infrastructure Components
______________________________________________________________________________________________
| Component        | Description                                                           |
|------------------|-----------------------------------------------------------------------|
| VPC              | Creates a virtual private cloud with a CIDR block of 10.0.0.0/16     |
| Subnet           | A public subnet in AZ us-east-1a with CIDR block 10.0.1.0/24         |
| Internet Gateway | Enables internet access for resources inside the VPC                |
| Route Table      | Adds a route to 0.0.0.0/0 via the IGW and associates it with subnet |
| Security Group   | Allows inbound SSH (22) and HTTP (80) from anywhere                 |
| EC2 Instance     | A t2.micro instance in the subnet, secured by the security group     |



## ✅ Prerequisites

Before using this project, ensure you have the following:

- **Terraform** installed locally (`v1.6+` recommended).
- **AWS credentials** configured using one of the following methods:
  
  - **AWS credentials file:**
    ```
    ~/.aws/credentials
    ```
  
  - **Environment variables:**
    ```bash
    export AWS_ACCESS_KEY_ID="your_access_key"
    export AWS_SECRET_ACCESS_KEY="your_secret_key"
    export AWS_SESSION_TOKEN="your_session_token"  # Only if using temporary credentials
    ```

- **IAM permissions** that allow creating:
  - VPCs
  - Subnets
  - Internet Gateways
  - Security Groups
  - EC2 Instances

---

## 🔐 Security Notes

- ⚠️ **Security Groups:**  
  The default security group configuration allows inbound access from `0.0.0.0/0` on **ports 22 (SSH)** and **80 (HTTP)**.  
  > This is **not recommended** for production environments. You should restrict access to trusted IP addresses only.

- 🖼️ **Custom AMI:**  
  You may replace the default Amazon Machine Image (AMI) with your preferred one, depending on the OS or region.

---

## 🧹 Cleanup

To destroy all the resources and avoid unnecessary AWS charges, run:

```bash
terraform destroy
> Always review the plan before confirming destruction.


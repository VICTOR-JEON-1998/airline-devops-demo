# airline-devops-demo


## 📅 2025-05-20 – AWS CLI Setup & IAM Configuration

### ✅ Tasks Completed
- Created IAM user `devops-ft-user` via AWS IAM Console
- Enabled programmatic access and granted `AdministratorAccess`
- Generated **Access Key** and **Secret Key** for CLI access
- Executed `aws configure`:
  - Region: `ap-northeast-2` (Seoul)
  - Output format: `json`
- Verified CLI connection by running: `aws sts get-caller-identity`

### 🔐 Security Note
- IAM user created with `AdministratorAccess` for initial testing only
- Will reduce permissions later to follow **least privilege principle**

### 🧭 Next Step
- Start writing `main.tf` to provision:
  - EC2 (t2.micro)
  - ECR repository
  - Security Group (ports 22, 80, 443)


# 📅 2025-05-22 Airline DevOps Project Progress Log

## ✅ Today's Goal
- Organize initial Terraform project structure
- Prepare AWS resources (ECR, EC2, Security Group)
- Ensure all configurations stay within the free tier

---

## 📁 Project Directory Structure

```
airline-devops-demo/
└── terraform/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
```

---

## 🛠️ Work Details

### 1. Code Separation & Security Group Enhancement
- Split Terraform configuration into `main.tf`, `variables.tf`, and `outputs.tf`
- EC2 instance configured with `t2.micro` (free tier)
- SSH access restricted to `180.64.226.122/32` (your public IP)
- HTTP/HTTPS ports open to the public

### 2. Terraform Initialization
- Ran `terraform init` to download AWS provider
- `.terraform.lock.hcl` generated for provider version lock-in

---

## ⚠️ Notes
- `terraform apply` has not been executed yet
- EC2 key pair is passed via the `key_pair_name` variable
- Next step involves automating Docker setup using `user_data`

---

## ⏭️ Next Steps
- Execute `terraform apply` to create infrastructure
- Add `user_data` script to install Docker on EC2 automatically
- Dockerize Node.js app and push to ECR
- Pull image and run the app on EC2 instance

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

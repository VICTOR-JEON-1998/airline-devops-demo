# airline-devops-demo


## 📅 2025-05-20 - AWS IAM Setup & CLI Configuration

✅ Created IAM user `devops-ft-user` with `AdministratorAccess` policy  
✅ Enabled programmatic access and generated Access Key  
✅ Configured AWS CLI with `aws configure`  
✅ Region: `ap-northeast-2`, Output: `json`  
✅ Confirmed `t2.micro` will be used to stay within Free Tier limits

🎯 Notes:
- IAM Identity Center users are **not usable** for CLI/Terraform
- Must use standard IAM user with Access Key

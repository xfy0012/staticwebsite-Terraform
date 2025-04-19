# 🌐 Static Website Deployment with Terraform + AWS S3 + GitHub Actions

This is a personal portfolio landing page for **Fanying Xu**, hosted on **AWS S3**, provisioned using **Terraform**, and automatically deployed via **GitHub Actions**.

## 🚀 Live Site

🔗 [Visit the Website](http://fanyingxu-portfolio-site-0419.s3-website-us-east-1.amazonaws.com/)  

## ✨ Features

- ⚡ **Static hosting** using AWS S3
- ⚙️ **Infrastructure as Code (IaC)** with Terraform
- 🔁 **Continuous Deployment** via GitHub Actions
- 📦 Clean file structure with `infra` (infra-as-code) and `deploy` (site deploy logic)
- 💙 Fully customizable HTML/CSS landing page

## 📁 Project Structure

├── infra/ # Terraform to provision S3 bucket & policy │ ├── main.tf │ ├── outputs.tf │ └── s3_policy.tf ├── deploy/ # Terraform to upload site files to the S3 bucket │ ├── main.tf │ └── upload_files.tf ├── site/ # HTML static files │ ├── index.html │ └── error.html ├── .github/workflows/ │ └── deploy.yml # GitHub Actions workflow ├── .gitignore ├── LICENSE └── README.md



## ⚙️ How It Works

### 1. Infrastructure Setup

```bash
cd infra
terraform init
terraform apply
This creates the S3 bucket with website hosting configuration and bucket policy. 

### 2. Deploy the Website

cd ../deploy
terraform init
terraform apply

This uploads your HTML files to the provisioned S3 bucket.

### Technologies Used

AWS S3 — For hosting the static site
Terraform — To provision and manage AWS resources
GitHub Actions — For CI/CD pipeline
HTML/CSS — Simple and clean frontend

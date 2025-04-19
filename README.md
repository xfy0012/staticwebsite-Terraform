#  Static Website Deployment with Terraform + AWS S3 + GitHub Actions

This is a personal portfolio landing page for **Fanying Xu**, hosted on **AWS S3**, provisioned using **Terraform**, and automatically deployed via **GitHub Actions**.

## Live Site

🔗 [Visit the Website](http://fanyingxu-portfolio-site-0419.s3-website-us-east-1.amazonaws.com/)  

##  Features

-  **Static hosting** using AWS S3
-  **Infrastructure as Code (IaC)** with Terraform
-  **Continuous Deployment** via GitHub Actions
-  Clean file structure with `infra` (infra-as-code) and `deploy` (site deploy logic)
-  Fully customizable HTML/CSS landing page

## 📁 Project Structure

```
.
├── infra/                  # Terraform to provision S3 bucket & policy
│   ├── main.tf
│   ├── outputs.tf
│   └── s3_policy.tf
│
├── deploy/                 # Terraform to upload site files to the S3 bucket
│   ├── main.tf
│   └── upload_files.tf
│
├── site/                   # HTML static files
│   ├── index.html
│   └── error.html
│
├── .github/workflows/      # GitHub Actions workflow
│   └── deploy.yml
│
├── .gitignore
├── LICENSE
└── README.md
```

## ⚙️ How It Works

### 1. Infrastructure Setup

```bash
cd infra
terraform init
terraform apply
```
This creates the S3 bucket with website hosting configuration and bucket policy.


### 2. Deploy the Website
```bash
cd ../deploy
terraform init
terraform apply
```

This uploads HTML files to the provisioned S3 bucket.

### GitHub Actions Deployment

This repository uses GitHub Actions to automatically upload the site whenever changes are pushed to the main branch.

The workflow is located at `.github/workflows/deploy.yml`

 ### Secrets Required
To use GitHub Actions, add the following Repository Secrets in GitHub:
`AWS_ACCESS_KEY_ID` 
`AWS_SECRET_ACCESS_KEY`

## Technologies Used

- **AWS S3** – For hosting the static website
- **Terraform** – To provision and manage AWS infrastructure as code
- **GitHub Actions** – For CI/CD pipeline to automatically deploy site updates
- **HTML/CSS** – For building a simple and clean static landing page



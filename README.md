# Fortino Romero - Personal Portfolio

This is my personal website built with Astro and Tailwind CSS, showcasing my experience, projects, and skills as a Cloud Engineer and AWS Advocate.

## 🚀 Features

*   Responsive design optimized for all devices
*   Dark/Light mode support
*   Fast loading with modern web technologies
*   SEO optimized
*   Projects showcase
*   Skills and certifications display

## 🧞 Technologies Used

*   Astro
*   Tailwind CSS
*   TypeScript
*   Terraform for infrastructure as code
*   AWS (S3, CloudFront, ACM, Route53)
*   GitHub Actions for CI/CD

## 🏗️ Infrastructure

This project uses Terraform to provision and manage AWS resources:

*   S3 bucket for static website hosting
*   CloudFront distribution for content delivery
*   SSL certificate via AWS Certificate Manager
*   Route53 for DNS management

## 👨‍💻 Development

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## 🚀 Deployment

This project uses GitHub Actions for automatic deployment:

```bash
# Apply Terraform changes
terraform init
terraform apply

# Manual deployment to S3
aws s3 sync ./dist/ s3://bucket-name --delete
```

GitHub Actions handles deployment automatically on push to main branch

## ⚙️ Environment Setup

To deploy this project, you'll need to set up the following GitHub secrets:

*   `AWS_ACCESS_KEY_ID`
*   `AWS_SECRET_ACCESS_KEY`
*   `S3_BUCKET_NAME`
*   `CLOUDFRONT_DISTRIBUTION_ID` 
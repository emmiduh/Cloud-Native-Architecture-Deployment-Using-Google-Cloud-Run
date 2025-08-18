# Cloud-Native Architecture Deployment Using Google Cloud Run

This repository contains Terraform code to deploy a cloud-native architecture using Google Cloud Run and other managed Google Cloud services. The architecture features a flexible load balancer serving static content from Cloud Storage and dynamic content from Cloud Run services.

## Architecture Overview

![Architecture Diagram](images/architecture-diagram.png)

The solution implements the following components:
- **Global Load Balancer**: Serves static content from Cloud Storage and routes dynamic requests to Cloud Run
- **Cloud Run**: Serverless container platform hosting dynamic services
- **Redis (Memorystore)**: Managed in-memory database for persistent data storage
- **VPC Connector**: Secure connection between Cloud Run and Redis

Key features:
- Path-based routing (e.g., `/api/<service>` automatically routes to corresponding Cloud Run service)
- Flexible infrastructure that can scale automatically
- Fully managed services minimizing operational overhead

## Prerequisites

- Google Cloud Project with billing enabled
- Terraform v1.0+ installed
- Google Cloud SDK (`gcloud`) installed and configured
- Basic knowledge of Docker and Cloud Run
- Required IAM permissions:
  - Secret Manager Admin
  - Cloud Run Admin
  - Memorystore Admin

## Deployment Steps

### 1. Clone the repository
```bash
git clone https://github.com/emmiduh/Cloud-Native-Architecture-Deployment-Using-Google-Cloud-Run.git
cd Cloud-Native-Architecture-Deployment-Using-Google-Cloud-Run

### 2. Initialize Terraform
```bash
terraform init

### 3. Review and modify variables
Edit variables.tf or provide values via:
```bash
terraform apply -var="project_id=your-project-id"

### 4. Apply the configuration
```bash
terraform apply

## Cleanup
Run:
``` bash
terraform destroy

## Techinical References

- [Terraform Documentation](https://developer.hashicorp.com/terraform/
docs)
- [Google Cloud Terraform Provider](https://registry.terraform.io/prov
iders/hashicorp/google/latest/docs)
- [Cloud Run Quickstarts](https://cloud.google.com/run/docs/quickstarts)
- [Terraform for Google Cloud – Essential Guide (Packt)](https://githu
b.com/PacktPublishing/Terraform-for-Google-Cloud-Essential-Guide)


## License

This project is licensed under the MIT License.


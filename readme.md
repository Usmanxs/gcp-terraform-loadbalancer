# GCP HTTP Load Balancer with Terraform

This project sets up a GCP architecture using Terraform that includes an HTTP load balancer, a VPC, firewall rules, two VM instances in separate subnets, Google Cloud Storage, and Cloud SQL.

## Architecture Overview

The architecture includes:
- A VPC with two subnets.
- Firewall rules allowing HTTP traffic.
- Two VM instances distributed across the subnets.
- An HTTP load balancer to balance traffic between the two VMs.
- A Google Cloud Storage bucket for file storage.
- A Google Cloud SQL instance for relational database needs.

## Folder Structure

gcp-terraform-loadbalancer/ ├── main.tf ├── variables.tf ├── outputs.tf ├── vpc.tf ├── firewall.tf ├── instance.tf ├── loadbalancer.tf ├── sql.tf ├── storage.tf └── terraform.tfvars

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- A Google Cloud Platform account with billing enabled.
- Google Cloud SDK installed for authentication (optional, as Cloud Shell can be used).

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/usmanxs/gcp-terraform-loadbalancer.git
   cd gcp-terraform-loadbalancer
  
   project_id = chose your own project id 
region     = "us-east4" you can chosse yourself
zone       = "us-east4-b"you can chosse yourself


**Initialize Terraform: Run the following command to initialize Terraform** and install the necessary provider plugins:

terraform init
**Plan the Infrastructure: Use the following command to see the execution** plan:
terraform plan
**Apply the Configuration: Execute the following command to create the resources:**
terraform apply

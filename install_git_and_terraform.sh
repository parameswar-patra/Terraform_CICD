#!/bin/bash

# Update system
sudo dnf update -y

# Install Git
sudo dnf install git -y

# Install yum-utils (needed for repo)
sudo dnf install -y yum-utils

# Add HashiCorp repo for Terraform
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# Install Terraform
sudo dnf install terraform -y

# Verify installations
git --version
terraform -version
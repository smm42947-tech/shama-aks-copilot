## Aks-copilot

A Kubernetes-based AI assistant for monitoring and managing Azure Kubernetes Service (AKS) clusters, implemented during hands-on lab sessions.

<img width="946" height="561" alt="image" src="https://github.com/user-attachments/assets/eff9d5d4-0e9c-46c9-8d16-ee285b8008fa" />


## 🎯 Overview

Shama Copilot provides real-time insights and recommendations for your AKS cluster, helping you maintain optimal performance and reliability.


## ✨ Features

- **Real-time Cluster Monitoring** - Track pod status and resource utilization
- **Pod Health Analysis** - Detect crashes and performance issues  
- **Resource Recommendations** - Optimize CPU and memory allocation
- **RBAC Security** - Secure access with Kubernetes Role-Based Access Control
- **Automated Insights** - Proactive recommendations for cluster management

## 📁 Project Structure

<img width="395" height="243" alt="image" src="https://github.com/user-attachments/assets/807af4a4-9d2b-440a-949f-46bc32016bc9" />


##  Quick Start

### Prerequisites
- Azure Kubernetes Service (AKS) cluster
- `kubectl` configured for your cluster
- Kubernetes access permissions

### Deployment

# Clone this repository
git clone https://github.com/YOUR_USERNAME/shama-aks-copilot.git

cd shama-aks-copilot

# Deploy Shama Copilot
kubectl apply -f kubernetes/shama-copilot-rbac.yaml
kubectl apply -f kubernetes/shama-copilot-config.yaml  
kubectl apply -f kubernetes/shama-copilot-deployment.yaml

# Deploy test application
kubectl apply -f kubernetes/myapp-deployment.yaml

****Using Deployment Script
****./scripts/deploy.sh

**Verification**
Check the deployment status:

# Check Shama Copilot pods
kubectl get pods -l app=shama-copilot

# Check all resources
kubectl get all -l app=shama-copilot

# View logs
kubectl logs -l app=shama-copilot --tail=50

**🔧 Configuration
**Key Components:
Deployment (shama-copilot-deployment.yaml)
	Replica count and resource limits
	Environment variables
	Liveness and readiness probes
Configuration (shama-copilot-config.yaml)
	ConfigMaps for settings
	Environment configuration
	Feature flags
RBAC (shama-copilot-rbac.yaml)
	ServiceAccount for pod identity
	Role with specific permissions
	RoleBinding to associate role with service account

# 📈Lab Results
Based on our implementation:
✅ 26+ pods running successfully across the cluster
✅ Zero pod crashes detected during monitoring
✅ RBAC permissions properly configured
✅ Resource monitoring operational
✅ Pod Disruption Budgets implemented for reliability

# 🛠️ Development
**The kubernetes/archive/ directory contains development versions:

Debug configurations
Fixed versions from troubleshooting
Configurable templates
Web-specific fixes

# 📝 Documentation
**Implementation Guide - Detailed lab documentation
Archive files - Historical development versions

# 🤝 Contributing
**This repository contains the actual implementation from AKS monitoring labs. Feel free to use these manifests as a reference for your own AKS deployments.

# 📄 License
**MIT License - feel free to use this implementation in your projects.

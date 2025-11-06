# Shama Copilot - Lab Implementation Guide

## Overview
This repository contains the actual Kubernetes manifests and configuration files used to implement Shama AKS Copilot during our hands-on lab sessions.

## Lab Achievements

### ✅ What We Built
1. **Shama Copilot Deployment**
   - Kubernetes Deployment with proper resource limits
   - ConfigMap for configuration
   - Service for network access

2. **Security**
   - RBAC with ServiceAccount, Role, and RoleBinding
   - Least privilege access principles

3. **Testing**
   - MyApp deployment for testing and validation
   - Multiple debug and fixed versions for troubleshooting

### 🔧 Files Description

#### Core Files (`kubernetes/` directory)
- `shama-copilot-deployment.yaml` - Main deployment (currently running)
- `shama-copilot-config.yaml` - Configuration and environment variables
- `shama-copilot-rbac.yaml` - Security permissions
- `myapp-deployment.yaml` - Test application

#### Archive Files (`kubernetes/archive/`)
Development and debugging versions created during the lab:
- Various fixed and debug versions
- Configurable templates
- Web-specific fixes

## Deployment History
Our implementation successfully deployed and maintained 26+ pods with no crashes, demonstrating reliable AKS cluster operations.

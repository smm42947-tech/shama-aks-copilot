#!/bin/bash

# Shama AKS Copilot - Deployment Script
# Used in our lab implementation

echo "🚀 Deploying Shama AKS Copilot..."

# Apply RBAC first
echo "Applying RBAC configuration..."
kubectl apply -f ../kubernetes/shama-copilot-rbac.yaml

# Apply ConfigMap
echo "Applying configuration..."
kubectl apply -f ../kubernetes/shama-copilot-config.yaml

# Deploy main application
echo "Deploying Shama Copilot..."
kubectl apply -f ../kubernetes/shama-copilot-deployment.yaml

# Deploy test application
echo "Deploying test application..."
kubectl apply -f ../kubernetes/myapp-deployment.yaml

echo ""
echo "✅ Deployment completed!"
echo ""
echo "📋 Checking deployment status:"
kubectl get pods -l app=shama-copilot
echo ""
echo "🔍 To check all resources:"
echo "kubectl get all -l app=shama-copilot"

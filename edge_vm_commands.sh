#!/bin/bash

# Step 1: SSH connection
# ssh azureuser@4.235.112.62

# Step 2: Install K3s
curl -sfL https://get.k3s.io | sh -

# Step 3: Verify K3s node
sudo k3s kubectl get nodes

# Step 4: Install kubectl via snap
sudo snap install kubectl --classic

# Step 5: Create nginx deployment (use sudo k3s kubectl)
sudo k3s kubectl create deployment nginx-vnf --image=nginx

# Step 6: Expose nginx via NodePort
sudo k3s kubectl expose deployment nginx-vnf --type=NodePort --port=80

# Step 7: Verify service
sudo k3s kubectl get svc

# Step 8: Setup kubeconfig for current user
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $(id -u):$(id -g) ~/.kube/config
export KUBECONFIG=$HOME/.kube/config

# Step 9: Verify node and service
kubectl get nodes
kubectl get svc

# Step 10: Port-forward nginx to local 8080
kubectl port-forward svc/nginx-vnf 8080:80
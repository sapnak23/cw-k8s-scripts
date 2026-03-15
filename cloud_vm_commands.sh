#!/bin/bash
# Cloud VM setup and Kubernetes deployment

# 1. SSH connection 
# ssh azureuser@4.235.113.17

# 2. Update system
sudo apt update && sudo apt upgrade -y

# 3. Install Docker
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker

# 4. Install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# 5. Start Minikube
minikube start

# 6. Deploy Nginx
kubectl create deployment nginx-vnf --image=nginx

# 7. Expose deployment as LoadBalancer
kubectl expose deployment nginx-vnf --type=LoadBalancer --port=80

# 8. Get service info including LoadBalancer IP
kubectl get svc

# Example output
# NAME         TYPE           CLUSTER-IP      EXTERNAL-IP      PORT(S)        AGE
# kubernetes   ClusterIP      10.96.0.1       <none>           443/TCP        37m
# nginx-vnf    LoadBalancer   10.110.218.198  10.110.218.198   80:32004/TCP   34m

# 9. Use minikube tunnel to get LoadBalancer IP accessible externally
 sudo minikube tunnel &
 The LoadBalancer IP above (10.110.218.198) can now be used in browser or curl

# 10. Port-forward to local for testing
kubectl port-forward svc/nginx-vnf 8080:80

# 11. Test via curl or browser
Curl http://10.110.218.198  OR  http://localhost:8080

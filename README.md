# CW K3s Scripts

This repository contains scripts and screenshots for setting up **K3s Kubernetes clusters** on cloud and edge VMs.  

It includes deployment and service creation examples, as well as port-forwarding and NodePort/LoadBalancer configurations.

---

## Repository Structure

## Deployment Results

### Cloud Environment (Minikube)

Nginx service deployed and exposed using LoadBalancer.

![Minikube LoadBalancer Service](screenshots/cloud-minikube-loadbalancer-svc.png)

Accessing the deployed Nginx service from the browser.

![Nginx Browser Output](screenshots/cloud-minikube-nginx-loadbalancer-browser.png)


### Edge Environment (K3s)

Nginx deployment and service created on the edge VM.

![Edge Kubernetes Deployment](screenshots/edge-k8s-terminal-deploy-svc-portforward.png)

Successful access to the deployed Nginx service from the browser.

![Edge Nginx Browser Output](screenshots/edge-k8s-browser-nginx.png)

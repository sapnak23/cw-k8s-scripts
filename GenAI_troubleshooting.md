# GenAI Troubleshooting Log

This file documents the limited use of GenAI tools during the coursework. 
GenAI was used only to help understand error messages and configuration issues. 
All scripts, deployments, and configurations were completed manually.

Problem 1: K3s kubeconfig permission issue  
When running `kubectl` after installing K3s, a permission error occurred when accessing the kubeconfig file.

GenAI assistance:  
GenAI suggested checking the kubeconfig location and adjusting permissions or exporting the KUBECONFIG environment variable.

Solution applied:  
The kubeconfig file from `/etc/rancher/k3s/k3s.yaml` was exported to the user environment so kubectl could run without sudo.

Result:  
The issue was resolved and kubectl commands worked correctly.

---

Problem 2: Accessing the deployed service from the browser  
After deploying the Nginx container, the service was not immediately accessible from the browser.

GenAI assistance:  
GenAI suggested verifying the service type and using NodePort or `minikube tunnel` for LoadBalancer services.

Solution applied:  
The service configuration was checked using `kubectl get svc`, and the NodePort/LoadBalancer method was used to access the service.

Result:  
The Nginx welcome page was successfully accessed from the browser.

---

Reflection

GenAI was used only to help interpret error messages and suggest possible troubleshooting steps. 
The setup of the Kubernetes environments, creation of scripts, deployment of containers, and testing were completed manually.

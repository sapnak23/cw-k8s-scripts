# GenAI Troubleshooting Log

This file documents the limited use of GenAI tools during the coursework. 
GenAI was used only to help understand error messages and configuration issues. 
All Kubernetes setup, scripts, and deployments were completed manually.

| Problem | GenAI Suggestion | Solution Applied | Worked? |
|-------|------------------|-----------------|---------|
| K3s kubeconfig permission error when running kubectl without sudo | Suggested checking kubeconfig location and exporting the KUBECONFIG variable | Exported `/etc/rancher/k3s/k3s.yaml` as the kubeconfig for the user environment | Yes |
| Unable to access deployed Nginx service from browser | Suggested checking service type and using NodePort or `minikube tunnel` for LoadBalancer services | Verified service using `kubectl get svc` and accessed the service through NodePort / tunnel | Yes |

## Technical Opinion

Using GenAI for troubleshooting was useful for interpreting error messages and suggesting possible fixes. However, the actual setup of the Kubernetes environments, creation of scripts, deployment of containers, and testing were done manually. GenAI was used only as a support tool to diagnose issues rather than to generate the coursework solution.

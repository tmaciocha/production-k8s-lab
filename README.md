**Production Kubernetes Lab**
This repo documents a production-like Kubernetes environment with CI/CD and observability

**Status**
Phase 1 completed - Local multi-node Kubernetes cluster operational.

Currently preparing Phase 2 (Application Deployment).

**What's inside (planned)**
- Kubernetes (kind / later VPS)
- CI/CD (GitHub Actions -> GHCR -> deploy)
- Observability: metrics + logs + alerting
- Runbooks + incident simulations
 

 ## Phase 1 - Local Kubernetes Cluster

 A local multi-node Kubernetes cluster created using kind (Kubernetes In Docker/Podman).

 Cluster consists of:
 - 1 control-plane node
 - 2 worker nodes

 EnvironmentL Fedora 39, Podman provider.


 ### Architecture

 Laptop (Fedora)
 - Podman
 - kind cluster
    - 1 control-plane
    - 2 worker nodes

### Create cluster

`kind create cluster --name prod-lab --config kind-config.yaml`


### Verify

`kube get nodes`


### Test Deployment

`kubectl create deployment hello --image=nginx`

`kubectl expose deployment hello --port=80 --type=NodePort`

`kubectl get svc`

A test nginx Deployment was created to verify cluster functionality.

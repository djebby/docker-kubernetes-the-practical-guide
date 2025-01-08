## 11 - Getting Started with Kubernetes

### Core Kubernetes Concepts & Architecture
  - Pod (Container) Multiple Pods can be created and removed to scale our app.
  - Worker Node (run the containers of our application "nodes" are the machines / virtual instances)
    - Kubelet: communication between master and worker node
    - Kube-proxy: Managed Node and Pod network communication.

  - Proxy / Config
  - Master Node, the controle plane (Various Components which help with managing the worker nodes)
    - API Server
    - Scheduler
    - Kube-Controller-Manager
    - Cloud-Controller-Manager
  - Cluster

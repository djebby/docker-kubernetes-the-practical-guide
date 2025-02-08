# SECTION 15 - KUBERNETES DEPLOYMENT (AWS EKS)

kOps - Kubernetes Operations : https://kops.sigs.k8s.io/

### Create an Amazon VPC for your Amazon EKS cluster
  https://docs.aws.amazon.com/eks/latest/userguide/creating-a-vpc.html


for linux : kubernetes configuration file by default, the file is saved at $HOME/.kube/

update kubernetes config to point to the aws eks cluster:
```shell
  aws eks --region <region-name> update-kubeconfig --name <cluster-name>
```

### EKSCTL
  eksctl is a simple CLI tool for creating and managing clusters on EKS : https://eksctl.io/
  cluster creation with eksctl example : 
  ```shell
    eksctl create cluster \
    --name test-cluster \
    --version 1.32 \
    --region us-east-1 \
    --nodegroup-name linux-nodes \
    --node-type t2.micro \
    --nodes 2
  ```

  to delete cluster
  ```shell
    eksctl delete cluster --name test-cluster
  ```

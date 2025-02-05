
# Section 12 - Kubernetes in Action - Diving into the Core Concepts

[reference](https://kubernetes.io/docs/reference/)

## minikube and kubectl
[minikube](https://minikube.sigs.k8s.io) quickly sets up a local kubernetes cluster.

[kubectl](https://kubernetes.io/docs/tasks/tools/) run commands against kubernetes clusters.


## ____________________________________________________MINIKUBE____________________________________________________

to start the minikube cluster
```shell
  minikube start --driver=docker
```

to check status
```shell
  minikube status
```

to start runing the cluster web server
```shell
  minikube dashboard
```

get external ip address to access the pod
```shell
  minikube service first-app
```

```
λ minikube help                                                                                                       
minikube provisions and manages local Kubernetes clusters optimized for development workflows.                        
                                                                                                                      
Basic Commands:                                                                                                       
  start            Starts a local Kubernetes cluster                                                                  
  status           Gets the status of a local Kubernetes cluster                                                      
  stop             Stops a running local Kubernetes cluster                                                           
  delete           Deletes a local Kubernetes cluster                                                                 
  dashboard        Access the Kubernetes dashboard running within the minikube cluster                                
  pause            pause Kubernetes                                                                                   
  unpause          unpause Kubernetes                                                                                 
                                                                                                                      
Images Commands:                                                                                                      
  docker-env       Provides instructions to point your terminal's docker-cli to the Docker Engine inside minikube.    
(Useful for building docker images directly inside minikube)                                                          
  podman-env       Configure environment to use minikube's Podman service                                             
  cache            Manage cache for images                                                                            
  image            Manage images                                                                                      
                                                                                                                      
Configuration and Management Commands:                                                                                
  addons           Enable or disable a minikube addon                                                                 
  config           Modify persistent configuration values                                                             
  profile          Get or list the current profiles (clusters)                                                        
  update-context   Update kubeconfig in case of an IP or port change                                                  
                                                                                                                      
Networking and Connectivity Commands:                                                                                 
  service          Returns a URL to connect to a service                                                              
  tunnel           Connect to LoadBalancer services                                                                   
                                                                                                                      
Advanced Commands:                                                                                                    
  mount            Mounts the specified directory into minikube                                                       
  ssh              Log into the minikube environment (for debugging)                                                  
  kubectl          Run a kubectl binary matching the cluster version                                                  
  node             Add, remove, or list additional nodes                                                              
  cp               Copy the specified file into minikube                                                              
                                                                                                                      
Troubleshooting Commands:                                                                                             
  ssh-key          Retrieve the ssh identity key path of the specified node                                           
  ssh-host         Retrieve the ssh host key of the specified node                                                    
  ip               Retrieves the IP address of the specified node                                                     
  logs             Returns logs to debug a local Kubernetes cluster                                                   
  update-check     Print current and latest version number                                                            
  version          Print the version of minikube                                                                      
  options          Show a list of global command-line options (applies to all commands).                              
                                                                                                                      
Other Commands:                                                                                                       
  completion       Generate command completion for a shell                                                            
  license          Outputs the licenses of dependencies to a directory                                                
                                                                                                                      
Use "minikube <command> --help" for more information about a given command.                                           
```


## ____________________________________________________KUBECTL____________________________________________________


get all deployments
```shell
  kubectl get deployments
```

to expose a pod
```shell
  kubectl expose deployment first-app --type=LoadBalancer --port=8080
```

to scale the application with more 3 pods
```shell
  kubectl scale deployment/first-app --replicas=3
```

to update the image that runs inside a pod container
```shell
  kubectl set image deployment/first-app kub-first-app=djebby/kub-first-app
```

to see the deployment status
```shell
  kubectl rollout status deployment/first-app
```

to rollback a failed deployment process.
```shell
  kubectl rollout undo deployment/first-app
  kubectl rollout undo deployment/first-app --to-revision=1
```

deployment history
```shell
  kubectl rollout history deployment/first-app
```

resources deletion
```shell
  kubectl delete service first-app
  kubectl delete deployment first-app
  kubectl delete -f=deployment.yaml
```


```shell
  kubectl apply -f=deployment.yaml
```


```
λ kubectl help
kubectl controls the Kubernetes cluster manager.

Find more information at: https://kubernetes.io/docs/reference/kubectl/                                                                    
                                                                                                                                            
Basic Commands (Beginner):                                                                                                                  
  create          Create a resource from a file or from stdin
  expose          Take a replication controller, service, deployment or pod and expose it as a new Kubernetes service
  run             Run a particular image on the cluster                                                                                     
  set             Set specific features on objects
                                                                                                                                            
Basic Commands (Intermediate):                                                                                                              
  explain         Get documentation for a resource                                                                                          
  get             Display one or many resources                                                                                             
  edit            Edit a resource on the server                                                                                             
  delete          Delete resources by file names, stdin, resources and names, or by resources and label selector                            
                                                                                                                                            
Deploy Commands:                                                                                                                            
  rollout         Manage the rollout of a resource                                                                                          
  scale           Set a new size for a deployment, replica set, or replication controller                                                   
  autoscale       Auto-scale a deployment, replica set, stateful set, or replication controller                                             
                                                                                                                                            
Cluster Management Commands:                                                                                                                
  certificate     Modify certificate resources                                                                                              
  cluster-info    Display cluster information                                                                                               
  top             Display resource (CPU/memory) usage                                                                                       
  cordon          Mark node as unschedulable                                                                                                
  uncordon        Mark node as schedulable                                                                                                  
  drain           Drain node in preparation for maintenance                                                                                 
  taint           Update the taints on one or more nodes                                                                                    
                                                                                                                                            
Troubleshooting and Debugging Commands:                                                                                                     
  describe        Show details of a specific resource or group of resources                                                                 
  logs            Print the logs for a container in a pod                                                                                   
  attach          Attach to a running container                                                                                             
  exec            Execute a command in a container                                                                                          
  port-forward    Forward one or more local ports to a pod                                                                                  
  proxy           Run a proxy to the Kubernetes API server                                                                                  
  cp              Copy files and directories to and from containers                                                                         
  auth            Inspect authorization                                                                                                     
  debug           Create debugging sessions for troubleshooting workloads and nodes                                                         
  events          List events                                                                                                               
                                                                                                                                            
Advanced Commands:                                                                                                                          
  diff            Diff the live version against a would-be applied version                                                                  
  apply           Apply a configuration to a resource by file name or stdin                                                                 
  patch           Update fields of a resource                                                                                               
  replace         Replace a resource by file name or stdin                                                                                  
  wait            Experimental: Wait for a specific condition on one or many resources                                                      
  kustomize       Build a kustomization target from a directory or URL                                                                      
                                                                                                                                            
Settings Commands:                                                                                                                          
  label           Update the labels on a resource                                                                                           
  annotate        Update the annotations on a resource                                                                                      
  completion      Output shell completion code for the specified shell (bash, zsh, fish, or powershell)                                     
                                                                                                                                            
Subcommands provided by plugins:                                                                                                            
  convert.exe   The command convert.exe is a plugin installed by the user                                                                   
                                                                                                                                            
Other Commands:                                                                                                                             
  api-resources   Print the supported API resources on the server                                                                           
  api-versions    Print the supported API versions on the server, in the form of "group/version"                                            
  config          Modify kubeconfig files                                                                                                   
  plugin          Provides utilities for interacting with plugins                                                                           
  version         Print the client and server version information                                                                           
                                                                                                                                            
Usage:                                                                                                                                      
  kubectl [flags] [options]                                                                                                                 
                                                                                                                                            
Use "kubectl <command> --help" for more information about a given command.                                                                  
Use "kubectl options" for a list of global command-line options (applies to all commands).                                                  
```


# Kubernetes README

## Clustering up and running

Check that it is properly installed, by running the minikube version command:

```
minikube version
```

Start the cluster, by running the _minikube start_ command:

```
minikube start
```

## Cluster Command Line

To check if kubectl is installed

```
kubectl version
```

To see the cluster detail

```
kubectl cluster-info
```

To view the nodes in the cluster, run the 

```
kubectl get nodes
```

## Pod

A Pod models an application-specific "logical host" and can contain different application containers which are tightly coupled.  For examples, a Pod might include both the container with your Node.js app as well as a different container that feeds the data to be published by the Node.js webserver.  The containers in a Pod share an IP Address port space, are always *_col-located_* and *_co-scheduled_*, and run in a shared context on the same Node.

![alt container image](https://d33wubrfki0l68.cloudfront.net/fe03f68d8ede9815184852ca2a4fd30325e5d15a/98064/docs/tutorials/kubernetes-basics/public/images/module_03_pods.svg)

## Node

A Pod always runs on a *Node*.  

## MiniKube

### Starting a Cluser
To start minikube (optionally with a local VM driver)

```
minikube start --vm-driver=<driver>

divers:
  - virtualbox
  - vmwarefusion
  - kvm2
  - kvm
```

### Stopping a Cluster
This commands shut down the Minikube Virtual Machine, but preserves all cluster state and data.  Starting the cluster again will restore it to it's previous state.

```
minikube stop
```

### Deleting a cluster
This comman shuts down and deletes the Minikube Virtual Machine.  No data or state is preserved.

```
minikube delete
```
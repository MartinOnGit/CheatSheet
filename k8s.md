# Kubernetes kubectl Cheatsheet

[kubectl reference](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)

[kubernetes api reference](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#resourcerequirements-v1-core) for Resource Config syntax

## Get/Describe objects

List objects
```bash
kubectl get <kind> -l label.name!=label_value --namespace=<namespace>
kubectl get <kind> <name> [-o name | -o running |-o wide | -o yaml]
```

Get detailed object
```bash
kubectl describe <kind> <name>
```

List kind
```bash
kubectl api-resources
```

## Create/Update/Delte objects

Create/Update
```bash
kubectl apply -f resource_confg.yaml
```

Delete
```bash
kubectl delete -f resource_confg.yaml
```

Get work with the selector for the Resource Config file
```bash
kubectl get -f resource_confg.yaml
```

## Monitoring pods and node

```bash
kubectl top pod <pod>
kubectl top node ...

# do not "edit" deployments replicas, use
kubectl scale deployment deploymentName --replicas 3
```

## Debug resources

```bash
kubectl logs podName [--previous][--container=containerName]
kubectl logs --selector label=value

# forward pod port to local port
kubectl port-forward the-pod localPort:containerPort

#start a pod and connect to a terminal in it
kubectl run debug-pod --image=ubuntu --rm -it -- bash
## be sure to apt-get update before installing package :)

# start container in a pod (and  attache to it)
kubectl debug podName --interactive --tty --image=alpine --target=
```
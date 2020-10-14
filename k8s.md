# Kubernetes kubectl Cheatsheet

[kubectl reference](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)

[kubernetes api reference](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#resourcerequirements-v1-core) for Resource Config syntax

## Get/Describe objects

List objects
```bash
kubectl get <object> -l label.name!=label_value --namespace=<namespace>
```
<object> can be any `kind` of Kubernetes object (available for autocomplete).

Get detailed object
```bash
kubectl describe <object> <object name>
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
```

# kubectl Cheat Sheet (common commands)

# Basic
kubectl apply -f file.yaml
kubectl create -f file.yaml
kubectl delete -f file.yaml
kubectl get pods,svc,deploy -A
kubectl describe pod <name>
kubectl logs <pod>
kubectl exec -it <pod> -- /bin/sh

# Deployment & Rollouts
kubectl rollout status deployment/<name>
kubectl rollout history deployment/<name>
kubectl rollout undo deployment/<name>
kubectl scale deployment/<name> --replicas=3
kubectl set image deployment/<name> <container>=image:tag

# Config & Contexts
kubectl config view
kubectl config use-context <context>
kubectl config set-context --current --namespace=<ns>

# Debugging
kubectl get events --sort-by=.metadata.creationTimestamp
kubectl top pod
kubectl port-forward svc/<service> 8080:80

# Editing & Patch
kubectl edit deployment/<name>
kubectl patch deployment/<name> -p '{"spec":{"replicas":2}}'

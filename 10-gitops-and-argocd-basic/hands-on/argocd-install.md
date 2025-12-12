# ArgoCD install (basic)
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Port-forward for web UI
kubectl -n argocd port-forward svc/argocd-server 8080:443

# Networking commands
kubectl apply -f nginx-deployment-service.yaml
kubectl get svc
kubectl get ingress
kubectl port-forward svc/nginx-demo-svc 8080:80
curl http://localhost:8080

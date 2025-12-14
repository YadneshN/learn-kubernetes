# Commands (Workloads)

kubectl apply -f deployment-replicas.yaml

kubectl scale deployment demo-deployment --replicas=5

kubectl set image deployment/rollout-demo web=nginx:1.24

kubectl rollout status deployment/rollout-demo

kubectl rollout undo deployment/rollout-demo

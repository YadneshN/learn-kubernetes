# Storage commands

kubectl apply -f pv-hostpath.yaml

kubectl apply -f pvc.yaml

kubectl apply -f pod-using-pvc.yaml

kubectl get pv,pvc

kubectl describe pvc pvc-demo

# RBAC commands

kubectl apply -f namespace.yaml

kubectl apply -f serviceaccount.yaml

kubectl apply -f role-pod-reader.yaml

kubectl apply -f rolebinding.yaml

kubectl auth can-i get pods --as system:serviceaccount:demo-ns:demo-sa

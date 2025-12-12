#!/bin/bash
# run-demo.sh - quick end-to-end demo on a working cluster
kubectl create namespace demo || true
kubectl apply -n demo -f 01-introduction-to-kubernetes/hands-on/first-deployment.yaml
kubectl apply -n demo -f 03-networking-in-kubernetes/hands-on/nginx-deployment-service.yaml
kubectl apply -n demo -f 04-storage-in-kubernetes/hands-on/pvc.yaml
kubectl get all -n demo
echo "Demo applied in namespace 'demo'. Use kubectl get pods -n demo to monitor."

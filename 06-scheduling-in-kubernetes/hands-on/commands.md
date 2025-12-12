# Scheduling commands
chmod +x node-label.sh
./node-label.sh
kubectl apply -f pod-node-selector.yaml
kubectl apply -f taint-node.sh
kubectl apply -f toleration-pod.yaml

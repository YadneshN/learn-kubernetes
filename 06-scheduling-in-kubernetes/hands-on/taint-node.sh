#!/bin/bash
NODE=$(kubectl get nodes -o jsonpath='{.items[0].metadata.name}')
kubectl taint nodes $NODE key=value:NoSchedule || true
echo "Tainted node $NODE with key=value:NoSchedule"

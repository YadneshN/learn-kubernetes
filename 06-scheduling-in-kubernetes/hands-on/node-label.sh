#!/bin/bash
# Label the current node (run on node or with kubectl pointing to cluster)
NODE=$(kubectl get nodes -o jsonpath='{.items[0].metadata.name}')
kubectl label node $NODE disktype=ssd --overwrite
echo "Labeled node $NODE with disktype=ssd"

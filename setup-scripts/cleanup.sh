#!/bin/bash
# cleanup demo resources
kubectl delete ns demo || true
kubectl delete pvc --all || true
kubectl delete pv --all || true

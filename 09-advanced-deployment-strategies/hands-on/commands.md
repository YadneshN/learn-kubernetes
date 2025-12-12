# Advanced deployment commands
# Switch service to green:
kubectl patch svc canary-svc -p '{"spec":{"selector":{"app":"green"}}}'
# Or to split traffic you would use advanced ingress/traffic-split tools (not covered here)

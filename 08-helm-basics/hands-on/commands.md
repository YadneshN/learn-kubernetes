# Helm commands
helm install my-nginx hands-on/sample-helm-chart
helm upgrade my-nginx hands-on/sample-helm-chart --set image.tag=1.24
helm uninstall my-nginx

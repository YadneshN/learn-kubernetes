#!/bin/bash
# install-k3s-ec2.sh
# Usage: sudo bash install-k3s-ec2.sh
# Tested on Ubuntu 22.04 LTS (t3.micro / t2.micro)
set -e

# Basic prerequisites
apt-get update
apt-get install -y curl apt-transport-https ca-certificates

# Disable swap (kubelet requirement)
swapoff -a
sed -i.bak '/ swap / s/^/#/' /etc/fstab || true

# Install k3s (lightweight Kubernetes)
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.27.6+k3s1 sh -

# Print kubeconfig location
echo "Kubeconfig: /etc/rancher/k3s/k3s.yaml"
echo "To use kubectl from your laptop, copy /etc/rancher/k3s/k3s.yaml and set KUBECONFIG to it."

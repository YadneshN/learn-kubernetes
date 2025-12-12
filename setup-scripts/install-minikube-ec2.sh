#!/bin/bash
# install-minikube-ec2.sh
# Usage: sudo bash install-minikube-ec2.sh
set -e
apt-get update
apt-get install -y curl conntrack
# Install Docker
curl -fsSL https://get.docker.com | sh
usermod -aG docker $SUDO_USER || true
# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# Install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
install minikube-linux-amd64 /usr/local/bin/minikube
echo "Start minikube with: minikube start --driver=docker"

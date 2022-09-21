#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Install ifconfig  
apt-get install -y net-tools

# Install docker
apt-get install -y docker.io
usermod -aG docker vagrant

# Install docker-compose
#apt-get install -y docker-compose

# Install k3d
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Install Helm
curl -s https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# Install kompose (Optional)
curl -L https://github.com/kubernetes/kompose/releases/download/v1.18.0/kompose-linux-amd64 -o kompose
install -o root -g root -m 0755 kompose /usr/local/bin/kompose

# Required to run a simple webserver (Optional)
mkdir /home/vagrant/src
echo "I am edge $HOSTNAME" > /home/vagrant/src/index.html

# Clean up
rm -f kubectl kompose


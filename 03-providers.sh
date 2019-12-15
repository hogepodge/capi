#!/bin/bash

# The first provider enables bootstrap capabilities into the cluster
kubectl create -f https://github.com/kubernetes-sigs/cluster-api-bootstrap-provider-kubeadm/releases/download/v0.1.5/bootstrap-components.yaml

# The second provider enables deployment to Docker as a cluster host
# Other providers include AWS, Azure, OpenStack, and vSphere.

kubectl create -f https://github.com/kubernetes-sigs/cluster-api-provider-docker/releases/download/v0.2.1/provider-components.yaml


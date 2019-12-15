#!/bin/bash

# Now we install the necessary component for Cluster-API into our bootstrap
# cluster. This is a fairly extensive manifest to apply to the cluster

kubectl get machines

kubectl create -f https://github.com/kubernetes-sigs/cluster-api/releases/download/v0.2.7/cluster-api-components.yaml

kubectl get machines

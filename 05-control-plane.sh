#!/bin/bash
set -x

# We now create a control plane in our newly created (but empty) cluster

kubectl apply -f control-plane.yaml

# A kubeconfig for the cluster control plane is stored as a secret in the bootstrap
# cluster. We can pull that information and use it to access the new control plane

read -n1 -r -p "Press any key to continue after the control plane has started" key

kubectl --namespace=default get secret/capi-quickstart-kubeconfig -o json \
  | jq -r .data.value \
  | base64 --decode \
  > ./capi-quickstart.kubeconfig




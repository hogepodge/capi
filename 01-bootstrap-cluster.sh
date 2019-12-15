#!/bin/bash

# We start the demo with the creation of a BOOTSTRAP CLUSTER.
# Following the quickstart guide from the Cluster-API docs, we'll use
# a Kubernetes-IN-Docker cluster to get started.

cat > kind-cluster-with-extramounts.yaml <<EOF
kind: Cluster
apiVersion: kind.sigs.k8s.io/v1alpha3
nodes:
- role: control-plane
  extraMounts:
    - hostPath: /var/run/docker.sock
      containerPath: /var/run/docker.sock
EOF

kind create cluster --config ./kind-cluster-with-extramounts.yaml --name capi-bootstrap

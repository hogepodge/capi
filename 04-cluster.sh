#!/bin/bash
# Build out the empty cluster resource to tell cluster-api where our
# cluster lives and what provider to use
cat > cluster.yaml << EOF
apiVersion: cluster.x-k8s.io/v1alpha2
kind: Cluster
metadata:
  name: capi-quickstart
spec:
  clusterNetwork:
    pods:
      cidrBlocks: ["192.168.0.0/16"]
  infrastructureRef:
    apiVersion: infrastructure.cluster.x-k8s.io/v1alpha2
    kind: DockerCluster
    name: capi-quickstart
---
apiVersion: infrastructure.cluster.x-k8s.io/v1alpha2
kind: DockerCluster
metadata:
  name: capi-quickstart
EOF

kubectl apply -f cluster.yaml

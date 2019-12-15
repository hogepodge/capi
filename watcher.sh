#!/bin/bash
set -x

watch -n 30 "docker ps; \
	kubectl get pods --all-namespaces; \
	kubectl --kubeconfig=./capi-quickstart.kubeconfig get nodes"


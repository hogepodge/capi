#!/bin/bash
set -x

# Now we can create a number of woker nodes using a MachineDeployment

kubectl apply -f machines.yaml

#!/bin/bash

# chrono @ 2022-04

# https://github.com/flannel-io/flannel

kubectl apply -f kube-flannel.yml

echo "waiting network ready ..."

sleep 10

kubectl get node

# kubectl taint node k8s-master node-role.kubernetes.io/master:NoSchedule-
#kubectl taint nodes --all node-role.kubernetes.io/master-

# test pod
kubectl run ngx --image=nginx:alpine


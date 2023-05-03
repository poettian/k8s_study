#!/bin/bash

# chrono @ 2022-04

# https://kubernetes.io/zh/docs/reference/setup-tools/kubeadm/kubeadm-init/

# init k8s
sudo kubeadm init \
    --apiserver-advertise-address=192.168.236.129 \
    --pod-network-cidr=10.10.0.0/16 \
    --kubernetes-version v1.23.3 \
    --v=5

# get join token
# kubeadm token list
# kubeadm token create --print-join-command
# openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'

# enable kubectl
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# check
kubectl version
kubectl get node

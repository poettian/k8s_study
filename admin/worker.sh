#!/bin/bash

# chrono @ 2022-04

# copy kubeadm join cmd here, with sudo
sudo kubeadm join 192.168.236.129:6443 \
    --token wy3qps.m2sgck4mvdxv4xja \
    --discovery-token-ca-cert-hash sha256:fa074d40de85f21d3ab751b9427c2262d0d5018c31be61162e127c8cca2426fd

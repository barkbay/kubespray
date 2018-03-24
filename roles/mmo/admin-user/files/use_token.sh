#!/bin/bash -x

kubectl config set-credentials admin-cluster.minikube --token $(cat $HOME/minikube.token) && \
kubectl config set-cluster minikube --insecure-skip-tls-verify=true --server=https://192.168.56.10:6443 && \
kubectl config set-context admin-cluster.minikube --user=admin-cluster.minikube --namespace=default --cluster=minikube && \
kubectl config use-context admin-cluster.minikube

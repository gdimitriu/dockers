#!/bin/sh
minikube kubectl -- create configmap --from-file=nutcracker.yaml twem-config
minikube kubectl -- create -f memcached-ambassador-pod.yaml 
minikube kubectl -- create configmap --from-file=shared-nutcracker.yaml shared-twem-config
minikube kubectl -- create -f shared-twemproxy-deploy.yaml 
minikube kubectl -- create -f shard-routerservice.yaml 
 

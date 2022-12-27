#!/bin/sh
minikube kubectl -- create -f dictionary-deploy.yaml 
minikube kubectl -- create -f dictionary-service.yaml 
minikube kubectl -- create configmap varnish-config --from-file=default.vcl
minikube kubectl -- create -f varnish-deploy.yaml 
minikube kubectl -- create -f varnish-service.yaml 
minikube kubectl -- create -f nginx-deploy.yaml 
minikube kubectl -- create -f nginx-deploy.yaml 
minikube kubectl -- create -f nginx-service.yaml 
  

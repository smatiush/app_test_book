#!/bin/bash

# Avvia Minikube
minikube start

# Verifica che Minikube sia attivo e pronto
echo "Aspettando che Minikube sia pronto..."
minikube status

# Esegue il port forwarding per ArgoCD
echo "Avviando il port forwarding per ArgoCD..."
kubectl port-forward svc/argocd-server -n argocd 8080:443

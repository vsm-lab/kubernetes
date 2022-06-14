#!/usr/bin/env bash
istioctl install --set profile=demo -y
kubectl create ns hka-vsmlab
kubectl label ns hka-vsmlab istio-injection=enabled
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.14/samples/addons/kiali.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.14/samples/addons/prometheus.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.14/samples/addons/grafana.yaml
kubectl apply -n hka-vsmlab -f .\service-database.yaml
kubectl apply -n hka-vsmlab -f .\service-webshop.yaml
kubectl apply -n hka-vsmlab -f .\service-categories.yaml
kubectl apply -n hka-vsmlab -f .\service-products.yaml
kubectl apply -n hka-vsmlab -f .\ingress-istio-final.yaml
#kubectl port-forward svc/istio-ingressgateway 8080:80 -n istio-system
#istioctl dashboard grafana
#istioctl dashboard kiali
## Infrastruktur
* Rancher Cluster auf Hetzner Cloud Node
* Rancher Monitoring Installation (Grafana + Prometheus)
* Rancher Istio Installation
* Hetzner Cloud Controller
* Automatische Konfiguration von Hetzner Cloud Load-Balancer

## Vorgehen
* Annotaton des Istio Ingress Services mit den benötigten Konfigurationen für den Load-Balancer
* Aktivieren des Proxy-Protokolls für Isito (`envoy.yaml`)
* Installation der Service Deployments, MySQL StatefulSet und deren Services (`service-*.yaml`)
* Konfiguration Istio (`ingress-istio.yaml`) - alternativ mit Nginx Ingress Controller (`ingress.yaml`)
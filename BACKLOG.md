**Backlog**
**Phase 1 - Environment**
-[ ] Install kubectl
-[ ] Install kind
-[ ] Create cluster  (2-3 nodes)
-[ ] Deploy hello-app and verify access
-[ ] Document setup in README

**Phase 2 - App on K8s**
-[ ] choose app stack (backend + progress)
-[ ] Dockerize backend
-[ ] K8s manifest: namespace, deployments, services
-[ ] ConfigMap + Secret
-[ ] Probes + requests/limits
-[ ] Ingress
-[ ] Rolling update test

**Phase 3 - CI/CD**
-[ ] GitHub Actions: build/push to GHCR
-[ ] Deployment automation
-[ ] Version tags + release notes

**Phase 4 - Observability**
-[ ] Prometheus + Grafana
-[ ] Loki
-[ ] 2 dashboards (service + k8s)
-[ ] Alertmanager + 3 alerts

**Phase 5 - Reliability story**
-[ ] Define 1 SLO
-[ ] Create runbooks
-[ ] Simulate 2 incidents + write portmortems
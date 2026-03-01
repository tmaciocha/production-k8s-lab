#!/usr/bin/env bash

set -euo pipefail

# Directory where this script lives
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo "Applying manifests to local cluster..."
kubectl apply -f "${ROOT_DIR}/k8s/backend"
kubectl apply -f "${ROOT_DIR}/k8s/frontend"

echo "Forcing image refresh (rollout restart)..."
kubectl rollout restart deployment/backend-deployment
kubectl rollout restart deployment/frontend-deployment

echo "Waiting for rollout to complete..."
kubectl rollout status deployment/backend-deployment
kubectl rollout status deployment/frontend-deployment

echo "Deployment to local cluster completed successfully!"

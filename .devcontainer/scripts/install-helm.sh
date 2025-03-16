#!/bin/sh

# Fail fast, early, and often
set -oe pipefail -u

# Download
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

# Set Permissions
chmod 700 get_helm.sh

# Install
./get_helm.sh
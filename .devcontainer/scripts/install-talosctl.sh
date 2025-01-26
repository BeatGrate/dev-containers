#!/bin/bash

set -eo pipefail -u

# Version
TALOSCTL_VERSION="latest"

# Download taloctl & sha256checksum
curl -sLO "https://github.com/siderolabs/talos/releases/${TALOSCTL_VERSION}/download/{talosctl-linux-amd64,sha256sum.txt}" && chmod 755 ./talosctl-linux-amd64

# If the sha256checksum for talosctl is good, install it.
sha256sum --ignore-missing --check sha256sum.txt && mv ./talosctl-linux-amd64 /usr/local/bin/talosctl

# Cleanup
rm -rf ./sha256sum.txt
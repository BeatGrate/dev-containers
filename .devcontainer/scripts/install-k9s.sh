#!/bin/bash

set -eo pipefail -u

# Version
K9S_VERSION="latest"

# Download k9s and sha256checksum
curl -sLO "https://github.com/derailed/k9s/releases/${K9S_VERSION}/download/{k9s_linux_amd64.rpm,checksums.sha256}"

# If the sha256checksum for k9s is good, install it.
sha256sum --ignore-missing --check checksums.sha256 && rpm -i k9s_linux_amd64.rpm

# Cleanup
rm -rf "k9s_linux_amd64.rpm" "checksums.sha256"
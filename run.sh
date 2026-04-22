#!/bin/bash

oci_engine="podman"
#oci_engine="docker"

"$oci_engine" run -it --replace \
  --name dev_env_claude__container \
  -v "$(pwd):/mount/" \
  -w /mount \
  --userns=keep-id \
  dev_env_claude /home/steff-pdm/.local/bin/claude

"$oci_engine" commit dev_env_claude__container dev_env_claude


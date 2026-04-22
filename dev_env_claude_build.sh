#!/bin/bash

oci_engine="podman"
#oci_engine="docker"

"$oci_engine" build . -t dev_env_claude


#!/usr/bin/env bash

export NGINX_VERSION="1.15.2"
export NPS_VERSION="1.13.35.2-stable"
export PSOL_VERSION="1.13.35.2"

export DOCKER_REPOSITORY="donbeave/nginx-pagespeed"

export VERSION="${NPS_VERSION}_${NGINX_VERSION}-alpine"

echo "NGINX_VERSION     = ${NGINX_VERSION}"
echo "NPS_VERSION       = ${NPS_VERSION}"
echo "PSOL_VERSION      = ${PSOL_VERSION}"
echo "DOCKER_REPOSITORY = ${DOCKER_REPOSITORY}"
echo "VERSION           = ${VERSION}"
echo ""

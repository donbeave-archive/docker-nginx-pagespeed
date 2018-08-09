#!/bin/bash

NGINX_VERSION="1.15.2"
NPS_VERSION="1.13.35.2-stable"
PSOL_VERSION="1.13.35.2"
VERSION="${NGINX_VERSION}"

echo "NGINX_VERSION=${NGINX_VERSION}"
echo "NPS_VERSION=${NPS_VERSION}"
echo "PSOL_VERSION=${PSOL_VERSION}"

set -ex

docker build \
             -t donbeave/nginx-pagespeed:${VERSION} \
             --build-arg NGINX_VERSION=${NGINX_VERSION} \
             --build-arg NPS_VERSION=${NPS_VERSION} \
             --build-arg PSOL_VERSION=${PSOL_VERSION} \
             .

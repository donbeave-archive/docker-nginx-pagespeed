#!/usr/bin/env bash
export TERM="dumb"

printf "\n> \e[93m\033[1mBuild\e[0m\n\n"

set -e

ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
cd ${ABSOLUTE_PATH}

. ./env.sh;

docker build \
             -t donbeave/nginx-pagespeed:${VERSION} \
             --build-arg NGINX_VERSION=${NGINX_VERSION} \
             --build-arg NPS_VERSION=${NPS_VERSION} \
             --build-arg PSOL_VERSION=${PSOL_VERSION} \
             .

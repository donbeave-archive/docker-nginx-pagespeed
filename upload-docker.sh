#!/usr/bin/env bash
export TERM="dumb"

printf "\n> \e[93m\033[1mUploading Docker image\e[0m\n\n"

set -e

ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
cd ${ABSOLUTE_PATH}

. ./env.sh;

printf "# Uploading to ${DOCKER_REPOSITORY}:${VERSION}\n"

docker push ${DOCKER_REPOSITORY}:${VERSION}

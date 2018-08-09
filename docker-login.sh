#!/usr/bin/env bash
export TERM="dumb"

printf "\n> \e[93m\033[1mDocker login\e[0m\n\n"

set -e

ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
cd ${ABSOLUTE_PATH}

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

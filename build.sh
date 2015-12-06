#!/bin/bash

set -e

echo "> 1. Building deb package"
echo ""
docker build -f Dockerfile-build -t donbeave/nginx-pagespeed-build .

echo ""
echo "> 2. Publishing deb package"
echo ""
docker run -e "BINTRAY_API_KEY=$BINTRAY_API_KEY" -ti donbeave/nginx-pagespeed-build

echo ""
echo ""
echo "> 3. Building docker image"
echo ""
docker build  -t donbeave/nginx-pagespeed .

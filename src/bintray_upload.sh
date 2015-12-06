#!/bin/bash

echo "Step 1 : Uploading to bintray"
curl -X PUT -H "X-Bintray-Debian-Distribution: wheezy" \
            -H "X-Bintray-Debian-Component: main" \
            -H "X-Bintray-Debian-Architecture: amd64" \
     -T ${PKG_NAME}_${PKG_VERSION}-${PKG_RELEASE}_amd64.deb \
     -udonbeave:$BINTRAY_API_KEY \
     https://api.bintray.com/content/donbeave/deb/nginx-pagespeed/$PKG_VERSION/pool/main/n/nginx/${PKG_NAME}_${PKG_VERSION}-${PKG_RELEASE}_amd64.deb

echo ""

echo "Step 2 : Publishing"
curl -X POST -udonbeave:$BINTRAY_API_KEY https://api.bintray.com/content/donbeave/deb/nginx-pagespeed/$PKG_VERSION/publish

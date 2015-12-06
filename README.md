# NGINX with Google Page Speed module

[![Build Status](https://circleci.com/gh/donbeave/docker-nginx-pagespeed.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/donbeave/docker-nginx-pagespeed)

### Debian packages

https://bintray.com/donbeave/deb/nginx-pagespeed

#### How to install?

Add bintray repository:
```bash
curl 'https://bintray.com/user/downloadSubjectPublicKey?username=bintray' | apt-key add -
echo "deb http://dl.bintray.com/donbeave/deb wheezy main" >> /etc/apt/sources.list
```

Download the package lists from the repositories:
```bash
apt-get update
```

Install nginx package:
```bash
apt-get install -y ca-certificates nginx-pagespeed
```

### Docker image

https://hub.docker.com/r/donbeave/nginx-pagespeed

#### How to use?

In your `Dockerfile` use the following:
```
FROM donbeave/nginx-pagespeed:1.8.0-1

...
```

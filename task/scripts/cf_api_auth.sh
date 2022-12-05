#!/bin/bash

set -eux
env
wget -O cf.tgz "https://packages.cloudfoundry.org/stable?release=linux64-binary&version=6.32.0&source=github-rel"
tar xvf cf.tgz
chmod +x cf
mv cf /usr/local/bin
date +"%T.%N"
cf api -v ${CF_TARGET}
date +"%T.%N"
cf auth ${CF_USERNAME} ${CF_PASSWORD}
date +"%T.%N"
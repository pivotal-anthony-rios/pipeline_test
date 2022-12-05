#!/bin/bash

set -eux
env

date +"%T.%N"
cf api -v ${CF_TARGET}
date +"%T.%N"
cf auth ${CF_USERNAME} ${CF_PASSWORD}
date +"%T.%N"
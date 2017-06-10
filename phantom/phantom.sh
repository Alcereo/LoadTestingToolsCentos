#!/usr/bin/env bash

docker build --tag phantom_compile ./ &&\
docker run -i \
--rm \
--name phantom_compile \
phantom_compile

#--network "none"    \
#--cpus 1 \
#--memory 200MB \

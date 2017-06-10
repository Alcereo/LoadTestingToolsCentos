#!/usr/bin/env bash

#docker run --rm \
#--net host \
#direvius/yandex-tank
##-v $(pwd):/var/loadtest \
##-v $HOME/.ssh:/root/.ssh \

docker build --tag centos_titanium ./ &&\
docker run -i \
--rm \
--name centos_titanium \
centos_titanium

#--network "none"    \
#--cpus 1 \
#--memory 200MB \
